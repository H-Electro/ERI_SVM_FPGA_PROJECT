import json
import logging
import os
import pickle
import re
import sys
import threading
import time
import warnings
from itertools import cycle

import numpy as np
import pandas as pd
from sklearn.base import BaseEstimator, TransformerMixin, clone
from sklearn.compose import ColumnTransformer
from sklearn.ensemble import GradientBoostingRegressor, RandomForestRegressor
from sklearn.impute import SimpleImputer
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score
from sklearn.model_selection import KFold, RandomizedSearchCV, train_test_split
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import OneHotEncoder

warnings.filterwarnings("ignore", category=UserWarning)
warnings.filterwarnings("ignore", category=FutureWarning)

try:
    from xgboost import XGBRegressor
except ImportError:
    XGBRegressor = None

try:
    from lightgbm import LGBMRegressor
except ImportError:
    LGBMRegressor = None


RANDOM_STATE = 42
TEST_SIZE = 0.2
CV_SPLITS = 5
SEARCH_ITERATIONS = 4
SEARCH_N_JOBS = 1
MODEL_N_JOBS = 1
TARGET_COLUMN = "Crop_Yield_ton_per_hectare"
CROP_COLUMN = "Crop_Type"
DATASET_PATH = "datasets/crop-yield.csv"
OUTPUT_ROOT = "optimized_outputs"
PER_CROP_DIR = os.path.join(OUTPUT_ROOT, "per_crop")
GLOBAL_DIR = os.path.join(OUTPUT_ROOT, "global_model")
LOG_DIR = "logs"
LOG_FILE = os.path.join(LOG_DIR, "training_opt.log")


def ensure_dir(path):
    os.makedirs(path, exist_ok=True)


for required_dir in [OUTPUT_ROOT, PER_CROP_DIR, GLOBAL_DIR, LOG_DIR]:
    ensure_dir(required_dir)


logging.basicConfig(
    filename=LOG_FILE,
    filemode="w",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)
logger = logging.getLogger(__name__)


def run_spinner(stop_event, message="Running"):
    for frame in cycle(["|", "/", "-", "\\"]):
        if stop_event.is_set():
            break
        sys.stdout.write(f"\r{message} {frame}")
        sys.stdout.flush()
        time.sleep(0.1)
    sys.stdout.write("\r" + " " * (len(message) + 2) + "\r")
    sys.stdout.flush()


def safe_mape(y_true, y_pred):
    epsilon = 1e-8
    y_true = np.asarray(y_true)
    y_pred = np.asarray(y_pred)
    return np.mean(np.abs((y_true - y_pred) / np.maximum(np.abs(y_true), epsilon))) * 100


def sanitize_name(value):
    return re.sub(r"[^A-Za-z0-9_-]+", "_", str(value)).strip("_")


class AgronomicFeatureEngineer(BaseEstimator, TransformerMixin):
    def fit(self, X, y=None):
        self.feature_names_in_ = list(X.columns)
        return self

    def transform(self, X):
        df = X.copy()
        epsilon = 1e-6

        if {"N", "P"}.issubset(df.columns):
            df["N_to_P_ratio"] = df["N"] / (df["P"] + epsilon)
        if {"N", "K"}.issubset(df.columns):
            df["N_to_K_ratio"] = df["N"] / (df["K"] + epsilon)
        if {"P", "K"}.issubset(df.columns):
            df["P_to_K_ratio"] = df["P"] / (df["K"] + epsilon)
        if {"Temperature", "Humidity"}.issubset(df.columns):
            df["Temp_x_Humidity"] = df["Temperature"] * df["Humidity"]
            df["Humidity_per_Temp"] = df["Humidity"] / (df["Temperature"] + epsilon)
        if {"Soil_Moisture", "Temperature"}.issubset(df.columns):
            df["Moisture_per_Temp"] = df["Soil_Moisture"] / (df["Temperature"] + epsilon)
        if {"Rainfall", "Temperature"}.issubset(df.columns):
            df["Rainfall_per_Temp"] = df["Rainfall"] / (df["Temperature"] + epsilon)
        if {"Rainfall", "Sunlight_Hours"}.issubset(df.columns):
            df["Rainfall_x_Sunlight"] = df["Rainfall"] * df["Sunlight_Hours"]
        if {"Soil_Moisture", "Rainfall"}.issubset(df.columns):
            df["Water_Availability_Index"] = df["Soil_Moisture"] + 0.01 * df["Rainfall"]
        if {"Fertilizer_Used", "Pesticide_Used"}.issubset(df.columns):
            df["Input_Intensity"] = df["Fertilizer_Used"] + df["Pesticide_Used"]
            df["Fertilizer_to_Pesticide"] = df["Fertilizer_Used"] / (df["Pesticide_Used"] + epsilon)
        if {"Organic_Carbon", "Soil_Moisture"}.issubset(df.columns):
            df["Soil_Health_Index"] = df["Organic_Carbon"] * df["Soil_Moisture"]
        if {"Temperature", "Wind_Speed"}.issubset(df.columns):
            df["Evaporation_Proxy"] = df["Temperature"] * (df["Wind_Speed"] + 1.0)
        if {"Altitude", "Temperature"}.issubset(df.columns):
            df["Altitude_x_Temperature"] = df["Altitude"] * df["Temperature"]

        return df


class QuantileClipper(BaseEstimator, TransformerMixin):
    def __init__(self, lower=0.01, upper=0.99):
        self.lower = lower
        self.upper = upper

    def fit(self, X, y=None):
        df = X.copy()
        numeric_columns = df.select_dtypes(include=[np.number]).columns
        self.numeric_columns_ = list(numeric_columns)
        self.lower_bounds_ = df[self.numeric_columns_].quantile(self.lower)
        self.upper_bounds_ = df[self.numeric_columns_].quantile(self.upper)
        return self

    def transform(self, X):
        df = X.copy()
        if self.numeric_columns_:
            df.loc[:, self.numeric_columns_] = df[self.numeric_columns_].clip(
                lower=self.lower_bounds_,
                upper=self.upper_bounds_,
                axis=1,
            )
        return df


def make_one_hot_encoder():
    try:
        return OneHotEncoder(handle_unknown="ignore", sparse_output=False)
    except TypeError:
        return OneHotEncoder(handle_unknown="ignore", sparse=False)


def build_preprocessor(X):
    engineer = AgronomicFeatureEngineer()
    sample = engineer.fit_transform(X.head(5).copy())
    numeric_features = sample.select_dtypes(include=[np.number]).columns.tolist()
    categorical_features = sample.select_dtypes(exclude=[np.number]).columns.tolist()

    numeric_pipeline = Pipeline(
        steps=[
            ("imputer", SimpleImputer(strategy="median")),
        ]
    )
    categorical_pipeline = Pipeline(
        steps=[
            ("imputer", SimpleImputer(strategy="most_frequent")),
            ("encoder", make_one_hot_encoder()),
        ]
    )

    preprocessor = ColumnTransformer(
        transformers=[
            ("num", numeric_pipeline, numeric_features),
            ("cat", categorical_pipeline, categorical_features),
        ],
        remainder="drop",
    )
    return preprocessor


def build_pipeline(X, model):
    preprocessor = build_preprocessor(X)
    return Pipeline(
        steps=[
            ("features", AgronomicFeatureEngineer()),
            ("clip", QuantileClipper(lower=0.01, upper=0.99)),
            ("preprocessor", preprocessor),
            ("model", model),
        ]
    )


def get_model_search_spaces():
    spaces = [
        {
            "name": "RandomForestRegressor",
            "estimator": RandomForestRegressor(random_state=RANDOM_STATE, n_jobs=MODEL_N_JOBS),
            "params": {
                "model__n_estimators": [300, 500],
                "model__max_depth": [None, 10, 18],
                "model__min_samples_split": [2, 5, 10],
                "model__min_samples_leaf": [1, 2, 4],
                "model__max_features": ["sqrt", 0.7],
            },
        },
        {
            "name": "GradientBoostingRegressor",
            "estimator": GradientBoostingRegressor(random_state=RANDOM_STATE),
            "params": {
                "model__n_estimators": [200, 400, 700],
                "model__learning_rate": [0.03, 0.05, 0.08, 0.1],
                "model__max_depth": [2, 3, 4],
                "model__min_samples_split": [2, 5, 10],
                "model__min_samples_leaf": [1, 2, 4],
                "model__subsample": [0.7, 0.85, 1.0],
            },
        },
    ]

    if XGBRegressor is not None:
        spaces.append(
            {
                "name": "XGBRegressor",
                "estimator": XGBRegressor(
                    random_state=RANDOM_STATE,
                    objective="reg:squarederror",
                    n_jobs=MODEL_N_JOBS,
                    tree_method="hist",
                    verbosity=0,
                ),
                "params": {
                    "model__n_estimators": [300, 500, 800],
                    "model__learning_rate": [0.02, 0.05, 0.08, 0.1],
                    "model__max_depth": [3, 5, 7],
                    "model__min_child_weight": [1, 3, 5],
                    "model__subsample": [0.7, 0.85, 1.0],
                    "model__colsample_bytree": [0.7, 0.85, 1.0],
                    "model__reg_alpha": [0.0, 0.01, 0.1],
                    "model__reg_lambda": [1.0, 2.0, 5.0],
                },
            }
        )

    if LGBMRegressor is not None:
        spaces.append(
            {
                "name": "LGBMRegressor",
                "estimator": LGBMRegressor(
                    random_state=RANDOM_STATE,
                    objective="regression",
                    n_jobs=MODEL_N_JOBS,
                    verbose=-1,
                ),
                "params": {
                    "model__n_estimators": [300, 500, 800],
                    "model__learning_rate": [0.02, 0.05, 0.08, 0.1],
                    "model__max_depth": [-1, 6, 10],
                    "model__min_child_samples": [10, 20, 40],
                    "model__subsample": [0.7, 0.85, 1.0],
                    "model__colsample_bytree": [0.7, 0.85, 1.0],
                    "model__num_leaves": [31, 63, 127],
                    "model__reg_alpha": [0.0, 0.01, 0.1],
                    "model__reg_lambda": [0.0, 0.1, 1.0],
                },
            }
        )

    return spaces


def evaluate_predictions(y_true, y_pred):
    return {
        "r2": float(r2_score(y_true, y_pred)),
        "rmse": float(np.sqrt(mean_squared_error(y_true, y_pred))),
        "mae": float(mean_absolute_error(y_true, y_pred)),
        "mape": float(safe_mape(y_true, y_pred)),
    }


def get_selected_feature_names(fitted_pipeline):
    preprocessor = fitted_pipeline.named_steps["preprocessor"]
    feature_names = preprocessor.get_feature_names_out()
    return feature_names


def save_feature_importance(fitted_pipeline, output_dir):
    model = fitted_pipeline.named_steps["model"]
    selected_feature_names = get_selected_feature_names(fitted_pipeline)

    if not hasattr(model, "feature_importances_"):
        return

    importance_df = pd.DataFrame(
        {
            "feature": selected_feature_names,
            "importance": model.feature_importances_,
        }
    ).sort_values("importance", ascending=False)

    importance_df.to_csv(os.path.join(output_dir, "feature_importance.csv"), index=False)


def save_json(path, payload):
    with open(path, "w", encoding="utf-8") as f:
        json.dump(payload, f, indent=2)


def train_model_group(X, y, output_dir, group_name, stratify_labels=None):
    ensure_dir(output_dir)

    split_args = {
        "test_size": TEST_SIZE,
        "random_state": RANDOM_STATE,
    }
    if stratify_labels is not None:
        split_args["stratify"] = stratify_labels

    X_train, X_test, y_train, y_test = train_test_split(X, y, **split_args)

    cv = KFold(n_splits=CV_SPLITS, shuffle=True, random_state=RANDOM_STATE)
    candidate_results = []
    best_candidate = None

    for spec in get_model_search_spaces():
        logger.info("[%s] Tuning %s", group_name, spec["name"])
        pipeline = build_pipeline(X_train, spec["estimator"])

        search = RandomizedSearchCV(
            estimator=pipeline,
            param_distributions=spec["params"],
            n_iter=SEARCH_ITERATIONS,
            scoring="r2",
            cv=cv,
            n_jobs=SEARCH_N_JOBS,
            random_state=RANDOM_STATE,
            refit=True,
            verbose=0,
        )
        search.fit(X_train, y_train)

        tuned_model = search.best_estimator_
        predictions = tuned_model.predict(X_test)
        metrics = evaluate_predictions(y_test, predictions)

        candidate_payload = {
            "group": group_name,
            "model_name": spec["name"],
            "cv_best_r2": float(search.best_score_),
            "test_r2": metrics["r2"],
            "test_rmse": metrics["rmse"],
            "test_mae": metrics["mae"],
            "test_mape": metrics["mape"],
            "best_params": search.best_params_,
        }
        candidate_results.append(candidate_payload)

        if best_candidate is None or candidate_payload["cv_best_r2"] > best_candidate["summary"]["cv_best_r2"]:
            best_candidate = {
                "summary": candidate_payload,
                "best_params": search.best_params_,
                "model_name": spec["name"],
                "template_estimator": spec["estimator"],
                "holdout_estimator": tuned_model,
                "X_test": X_test.copy(),
                "y_test": y_test.copy(),
            }

        logger.info(
            "[%s] %s cv_r2=%.4f test_r2=%.4f rmse=%.4f mae=%.4f mape=%.2f%%",
            group_name,
            spec["name"],
            candidate_payload["cv_best_r2"],
            candidate_payload["test_r2"],
            candidate_payload["test_rmse"],
            candidate_payload["test_mae"],
            candidate_payload["test_mape"],
        )

    comparison_df = pd.DataFrame(candidate_results).sort_values(
        by=["cv_best_r2", "test_r2"], ascending=False
    )
    comparison_df.to_csv(os.path.join(output_dir, "model_comparison.csv"), index=False)

    final_pipeline = build_pipeline(X, clone(best_candidate["template_estimator"]))
    final_pipeline.set_params(**best_candidate["best_params"])
    final_pipeline.fit(X, y)

    with open(os.path.join(output_dir, "best_model.pkl"), "wb") as f:
        pickle.dump(final_pipeline, f)

    save_feature_importance(final_pipeline, output_dir)

    holdout_predictions = best_candidate["holdout_estimator"].predict(best_candidate["X_test"])
    holdout_metrics = evaluate_predictions(best_candidate["y_test"], holdout_predictions)

    summary = {
        "group": group_name,
        "best_model": best_candidate["model_name"],
        "selection_metric": "cv_best_r2",
        "cv_best_r2": float(best_candidate["summary"]["cv_best_r2"]),
        "holdout_metrics": holdout_metrics,
        "best_params": best_candidate["best_params"],
    }
    save_json(os.path.join(output_dir, "metrics.json"), summary)

    pd.DataFrame(
        {
            "actual": best_candidate["y_test"],
            "predicted": holdout_predictions,
            "residual": best_candidate["y_test"] - holdout_predictions,
        }
    ).to_csv(os.path.join(output_dir, "holdout_predictions.csv"), index=False)

    return summary, comparison_df


def main():
    df = pd.read_csv(DATASET_PATH)
    logger.info("Loaded dataset with %d rows and %d columns", df.shape[0], df.shape[1])

    all_summaries = []

    for crop in sorted(df[CROP_COLUMN].unique()):
        crop_name = sanitize_name(crop)
        crop_output_dir = os.path.join(PER_CROP_DIR, crop_name)

        crop_df = df[df[CROP_COLUMN] == crop].copy()
        X_crop = crop_df.drop(columns=[TARGET_COLUMN, CROP_COLUMN])
        y_crop = crop_df[TARGET_COLUMN]

        logger.info("Starting per-crop optimization for %s", crop)
        summary, _ = train_model_group(
            X=X_crop,
            y=y_crop,
            output_dir=crop_output_dir,
            group_name=f"crop::{crop}",
        )
        summary["crop"] = crop
        all_summaries.append(summary)

    logger.info("Starting global optimization")
    X_global = df.drop(columns=[TARGET_COLUMN])
    y_global = df[TARGET_COLUMN]
    global_summary, global_comparison = train_model_group(
        X=X_global,
        y=y_global,
        output_dir=GLOBAL_DIR,
        group_name="global",
        stratify_labels=df[CROP_COLUMN],
    )
    global_summary["crop"] = "GLOBAL"
    all_summaries.append(global_summary)

    summary_df = pd.DataFrame(all_summaries)
    summary_df.to_csv(os.path.join(OUTPUT_ROOT, "summary_metrics.csv"), index=False)
    global_comparison.to_csv(os.path.join(OUTPUT_ROOT, "global_model_comparison.csv"), index=False)

    if not summary_df.empty:
        best_row = summary_df.iloc[summary_df["cv_best_r2"].astype(float).argmax()]
        logger.info(
            "Best overall configuration: %s using %s with cv_r2=%.4f",
            best_row.get("crop", best_row["group"]),
            best_row["best_model"],
            float(best_row["cv_best_r2"]),
        )

    print(f"Done. Optimized logs saved into {LOG_FILE}")
    print(f"Artifacts saved into {OUTPUT_ROOT}")


if __name__ == "__main__":
    stop_spinner = threading.Event()
    spinner_thread = threading.Thread(target=run_spinner, args=(stop_spinner,), daemon=True)
    spinner_thread.start()
    try:
        main()
    finally:
        stop_spinner.set()
        spinner_thread.join()
