import json
import logging
import os
import pickle
import re
import struct
import sys
import threading
import time
import warnings
from itertools import cycle

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
from joblib import parallel_backend
from sklearn.base import BaseEstimator, TransformerMixin
from sklearn.compose import ColumnTransformer
from sklearn.impute import SimpleImputer
from sklearn.metrics import mean_absolute_error, mean_squared_error, r2_score
from sklearn.model_selection import RandomizedSearchCV, train_test_split
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import OneHotEncoder
from sklearn.tree import DecisionTreeRegressor, export_text, _tree


RANDOM_STATE = 42
TEST_SIZE = 0.2
CV_SPLITS = 5
SEARCH_ITERATIONS = 32
SEARCH_N_JOBS = -1
PARALLEL_BACKEND = "threading"
TARGET_COLUMN = "Crop_Yield_ton_per_hectare"
CROP_COLUMN = "Crop_Type"
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
BASE_DIR = os.path.abspath(os.path.join(SCRIPT_DIR, "..", ".."))
DATASET_PATH = os.path.join(BASE_DIR, "datasets", "crop-yield.csv")

LOG_DIR = os.path.join(SCRIPT_DIR, "log")
LOG_FILE = os.path.join(LOG_DIR, "training_tree_opt.log")
OUTPUT_ROOT = os.path.join(SCRIPT_DIR, "tree_output")
MODELS_DIR = os.path.join(OUTPUT_ROOT, "models_per_crop")
REPORTS_DIR = os.path.join(OUTPUT_ROOT, "reports")
FIGURES_DIR = os.path.join(SCRIPT_DIR, "output_figures")
RUN_CROP = "ALL"  # Use "ALL" to run every crop.
#Cotton
PARAM_DISTRIBUTIONS = {
    "model__criterion": ["squared_error", "friedman_mse", "absolute_error"],
    "model__max_depth": [5, 7, 9, 12, 15, None],
    "model__min_samples_split": [2, 5, 10, 20],
    "model__min_samples_leaf": [1, 2, 5, 10, 15, 20],
    "model__max_features": [None, "sqrt", "log2"],
    "model__ccp_alpha": [0.0, 0.0001, 0.0005, 0.001, 0.002],
}

OVERFIT_GAP_THRESHOLD = 0.10
CV_TOLERANCE = 0.015


def ensure_dir(path):
    os.makedirs(path, exist_ok=True)


for path in [LOG_DIR, OUTPUT_ROOT, MODELS_DIR, REPORTS_DIR, FIGURES_DIR]:
    ensure_dir(path)


logging.basicConfig(
    filename=LOG_FILE,
    filemode="w",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)
logger = logging.getLogger(__name__)

warnings.filterwarnings(
    "ignore",
    message=r"`sklearn\.utils\.parallel\.delayed` should be used with `sklearn\.utils\.parallel\.Parallel`.*",
    category=UserWarning,
)


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
    y_true = np.asarray(y_true)
    y_pred = np.asarray(y_pred)
    return np.mean(np.abs((y_true - y_pred) / np.maximum(np.abs(y_true), 1e-8))) * 100


def sanitize_name(value):
    return re.sub(r"[^A-Za-z0-9_-]+", "_", str(value)).strip("_")


def float_to_ieee754_hex(value):
    packed = struct.pack(">d", float(value))
    hex_str = "".join(f"{b:02X}" for b in packed)
    return f"64'h{hex_str}"


def tree_to_verilog_if_else(tree_model, feature_names, function_name="LE", indent="    "):
    tree_ = tree_model.tree_

    def recurse(node, depth):
        indent_str = indent * depth
        if tree_.feature[node] != _tree.TREE_UNDEFINED:
            feature = feature_names[tree_.feature[node]]
            threshold = float_to_ieee754_hex(tree_.threshold[node])
            left = tree_.children_left[node]
            right = tree_.children_right[node]

            code = f"{indent_str}if ({function_name}({feature}, {threshold})) begin\n"
            code += recurse(left, depth + 1)
            code += f"{indent_str}end else begin\n"
            code += recurse(right, depth + 1)
            code += f"{indent_str}end\n"
            return code

        value = float_to_ieee754_hex(tree_.value[node][0][0])
        return f"{indent_str}yield_f_reg = {value};\n"

    return recurse(0, 0)


def tree_to_python_if_else(tree_model, feature_names, function_name="predict_tree", indent="    "):
    tree_ = tree_model.tree_

    def recurse(node, depth):
        indent_str = indent * depth
        if tree_.feature[node] != _tree.TREE_UNDEFINED:
            feature = feature_names[tree_.feature[node]]
            threshold = tree_.threshold[node]
            left = tree_.children_left[node]
            right = tree_.children_right[node]

            code = f"{indent_str}if features['{feature}'] <= {threshold:.10f}:\n"
            code += recurse(left, depth + 1)
            code += f"{indent_str}else:\n"
            code += recurse(right, depth + 1)
            return code

        value = tree_.value[node][0][0]
        return f"{indent_str}return {value:.10f}\n"

    function_code = f"def {function_name}(features):\n"
    function_code += recurse(0, 1)
    return function_code


class OutlierClipper(BaseEstimator, TransformerMixin):
    def __init__(self, lower_quantile=0.01, upper_quantile=0.99):
        self.lower_quantile = lower_quantile
        self.upper_quantile = upper_quantile

    def fit(self, X, y=None):
        df = X.copy()
        numeric_columns = df.select_dtypes(include=[np.number]).columns.tolist()
        self.numeric_columns_ = numeric_columns
        if numeric_columns:
            self.lower_bounds_ = df[numeric_columns].quantile(self.lower_quantile)
            self.upper_bounds_ = df[numeric_columns].quantile(self.upper_quantile)
        else:
            self.lower_bounds_ = pd.Series(dtype=float)
            self.upper_bounds_ = pd.Series(dtype=float)
        return self

    def transform(self, X):
        df = X.copy()
        if self.numeric_columns_:
            float_map = {col: float for col in self.numeric_columns_}
            df = df.astype(float_map, copy=False)
            clipped = df[self.numeric_columns_].clip(
                lower=self.lower_bounds_,
                upper=self.upper_bounds_,
                axis=1,
            )
            for col in self.numeric_columns_:
                df[col] = clipped[col]
        return df


def make_one_hot_encoder():
    try:
        return OneHotEncoder(handle_unknown="ignore", sparse_output=False)
    except TypeError:
        return OneHotEncoder(handle_unknown="ignore", sparse=False)


def build_preprocessor(X):
    numeric_columns = X.select_dtypes(include=[np.number]).columns.tolist()
    categorical_columns = X.select_dtypes(exclude=[np.number]).columns.tolist()

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

    return ColumnTransformer(
        transformers=[
            ("num", numeric_pipeline, numeric_columns),
            ("cat", categorical_pipeline, categorical_columns),
        ],
        remainder="drop",
    )


def build_pipeline(X):
    return Pipeline(
        steps=[
            ("clip", OutlierClipper()),
            ("preprocessor", build_preprocessor(X)),
            ("model", DecisionTreeRegressor(random_state=RANDOM_STATE)),
        ]
    )


def complexity_score(params):
    max_depth = params["model__max_depth"]
    depth_value = 20 if max_depth is None else max_depth
    max_features = params["model__max_features"]
    feature_penalty = {"sqrt": 0, "log2": 1, None: 2}[max_features]
    ccp_alpha = params.get("model__ccp_alpha", 0.0)

    return (
        depth_value
        + (10.0 / params["model__min_samples_leaf"])
        + (6.0 / params["model__min_samples_split"])
        + feature_penalty
        - (250.0 * ccp_alpha)
    )


def choose_candidate(search, X_train, y_train):
    results = pd.DataFrame(search.cv_results_)
    results["cv_gap"] = results["mean_train_score"] - results["mean_test_score"]
    results["complexity"] = results["params"].apply(complexity_score)
    results["penalized_cv"] = (
        results["mean_test_score"]
        - 0.35 * np.maximum(results["cv_gap"] - 0.03, 0)
        - 0.002 * results["complexity"]
    )

    best_cv = results["mean_test_score"].max()
    pool = results[results["mean_test_score"] >= best_cv - CV_TOLERANCE].copy()
    if pool.empty:
        pool = results.copy()

    pool = pool.sort_values(
        by=["penalized_cv", "cv_gap", "complexity", "rank_test_score"],
        ascending=[False, True, True, True],
    )

    selected_row = pool.iloc[0]
    selected_params = selected_row["params"]
    selected_pipeline = build_pipeline(X_train)
    selected_pipeline.set_params(**selected_params)
    selected_pipeline.fit(X_train, y_train)

    return selected_pipeline, selected_row, results


def get_processed_feature_names(fitted_pipeline):
    return fitted_pipeline.named_steps["preprocessor"].get_feature_names_out()


def compute_metrics(model, X_train, X_test, y_train, y_test):
    train_pred = model.predict(X_train)
    test_pred = model.predict(X_test)

    train_r2 = r2_score(y_train, train_pred)
    test_r2 = r2_score(y_test, test_pred)
    rmse = np.sqrt(mean_squared_error(y_test, test_pred))
    mae = mean_absolute_error(y_test, test_pred)
    mape = safe_mape(y_test, test_pred)

    return {
        "train_r2": float(train_r2),
        "test_r2": float(test_r2),
        "gap": float(train_r2 - test_r2),
        "rmse": float(rmse),
        "mae": float(mae),
        "mape": float(mape),
    }


def extract_feature_importance(fitted_pipeline):
    tree_model = fitted_pipeline.named_steps["model"]
    feature_names = get_processed_feature_names(fitted_pipeline)
    importances = pd.DataFrame(
        {
            "feature": feature_names,
            "importance": tree_model.feature_importances_,
        }
    ).sort_values("importance", ascending=False)
    return importances


def predict_with_artifact(artifact, X):
    X_clipped = artifact["clipper"].transform(X)
    X_processed = artifact["preprocessor"].transform(X_clipped)
    return artifact["model"].predict(X_processed[:, artifact["selected_indices"]])


def export_tree_artifacts(artifact, crop_dir):
    feature_names = artifact["selected_feature_names"].tolist()
    tree_model = artifact["model"]

    tree_rules = export_text(tree_model, feature_names=feature_names)
    with open(os.path.join(crop_dir, "tree.log"), "w", encoding="utf-8") as f:
        f.write(tree_rules)

    with open(os.path.join(crop_dir, "tree.v"), "w", encoding="utf-8") as f:
        f.write(tree_to_verilog_if_else(tree_model, feature_names))

    with open(os.path.join(crop_dir, "tree.py"), "w", encoding="utf-8") as f:
        f.write(tree_to_python_if_else(tree_model, feature_names))


def train_crop_model(df_crop, crop_name):
    X = df_crop.drop(columns=[TARGET_COLUMN, CROP_COLUMN])
    y = df_crop[TARGET_COLUMN]

    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=TEST_SIZE, random_state=RANDOM_STATE
    )

    logger.info("Tuning decision tree for %s", crop_name)
    grid = RandomizedSearchCV(
        estimator=build_pipeline(X_train),
        param_distributions=PARAM_DISTRIBUTIONS,
        n_iter=SEARCH_ITERATIONS,
        scoring="r2",
        cv=CV_SPLITS,
        refit=True,
        n_jobs=SEARCH_N_JOBS,
        pre_dispatch="2*n_jobs",
        random_state=RANDOM_STATE,
        return_train_score=True,
    )
    with parallel_backend(PARALLEL_BACKEND):
        grid.fit(X_train, y_train)

    selected_pipeline, selected_row, cv_results = choose_candidate(grid, X_train, y_train)
    base_metrics = compute_metrics(selected_pipeline, X_train, X_test, y_train, y_test)

    logger.info(
        "%s base metrics: train_r2=%.4f test_r2=%.4f cv_r2=%.4f gap=%.4f",
        crop_name,
        base_metrics["train_r2"],
        base_metrics["test_r2"],
        selected_row["mean_test_score"],
        base_metrics["gap"],
    )

    importance_df = extract_feature_importance(selected_pipeline)
    final_artifact = {
        "clipper": selected_pipeline.named_steps["clip"],
        "preprocessor": selected_pipeline.named_steps["preprocessor"],
        "model": selected_pipeline.named_steps["model"],
        "selected_indices": np.arange(len(get_processed_feature_names(selected_pipeline))),
        "selected_feature_names": get_processed_feature_names(selected_pipeline),
        "metrics": base_metrics,
    }
    final_feature_importance = importance_df
    final_metrics = base_metrics
    logger.info("%s kept all encoded features (%d total)", crop_name, len(final_artifact["selected_indices"]))

    holdout_predictions = predict_with_artifact(final_artifact, X_test)

    metrics_payload = {
        "crop": crop_name,
        "train_r2": final_metrics["train_r2"],
        "test_r2": final_metrics["test_r2"],
        "cv_r2": float(selected_row["mean_test_score"]),
        "cv_train_r2": float(selected_row["mean_train_score"]),
        "cv_gap": float(selected_row["cv_gap"]),
        "gap": final_metrics["gap"],
        "rmse": final_metrics["rmse"],
        "mae": final_metrics["mae"],
        "mape": final_metrics["mape"],
        "best_params": selected_row["params"],
        "selected_feature_count": int(len(final_artifact["selected_indices"])),
        "overfit_flag": bool(final_metrics["gap"] > OVERFIT_GAP_THRESHOLD),
    }

    return {
        "artifact": final_artifact,
        "feature_importance": final_feature_importance,
        "cv_results": cv_results.sort_values(by="mean_test_score", ascending=False),
        "metrics": metrics_payload,
        "holdout_predictions": pd.DataFrame(
            {
                "actual": y_test,
                "predicted": holdout_predictions,
                "residual": y_test - holdout_predictions,
            }
        ),
    }


def get_target_crops(df):
    if str(RUN_CROP).upper() == "ALL":
        return sorted(df[CROP_COLUMN].unique())
    return [RUN_CROP]


def save_crop_outputs(crop_name, crop_result):
    crop_dir = os.path.join(MODELS_DIR, sanitize_name(crop_name))
    ensure_dir(crop_dir)

    with open(os.path.join(crop_dir, "model_bundle.pkl"), "wb") as f:
        pickle.dump(crop_result["artifact"], f)

    crop_result["feature_importance"].to_csv(
        os.path.join(crop_dir, "feature_importance.csv"),
        index=False,
    )
    crop_result["cv_results"].to_csv(
        os.path.join(crop_dir, "cv_results.csv"),
        index=False,
    )
    crop_result["holdout_predictions"].to_csv(
        os.path.join(crop_dir, "holdout_predictions.csv"),
        index=False,
    )

    with open(os.path.join(crop_dir, "metrics.json"), "w", encoding="utf-8") as f:
        json.dump(crop_result["metrics"], f, indent=2)

    export_tree_artifacts(crop_result["artifact"], crop_dir)


def save_crop_figures(crop_name, crop_result):
    crop_fig_dir = os.path.join(FIGURES_DIR, sanitize_name(crop_name))
    ensure_dir(crop_fig_dir)

    holdout_df = crop_result["holdout_predictions"]
    residuals = holdout_df["residual"].to_numpy()
    actual_values = holdout_df["actual"].to_numpy()
    importance_df = crop_result["feature_importance"].copy().head(15)

    plt.figure(figsize=(8, 6))
    sns.histplot(residuals, kde=True, bins=20)
    plt.xlabel("Residuals (Actual - Predicted)")
    plt.title(f"Residuals Distribution - {crop_name}")
    plt.grid(True)
    plt.savefig(os.path.join(crop_fig_dir, "residuals.png"), dpi=300, bbox_inches="tight")
    plt.close()

    plt.figure(figsize=(10, 6))
    sns.barplot(x=importance_df["importance"], y=importance_df["feature"])
    plt.title(f"Feature Importance - {crop_name}")
    plt.xlabel("Importance Score")
    plt.ylabel("Features")
    plt.savefig(os.path.join(crop_fig_dir, "feature_importance.png"), dpi=300, bbox_inches="tight")
    plt.close()

    plt.figure(figsize=(8, 6))
    sns.scatterplot(x=actual_values, y=residuals)
    plt.xlabel("Actual Yield")
    plt.ylabel("Residuals")
    plt.title(f"Error vs Actual Yield - {crop_name}")
    plt.savefig(os.path.join(crop_fig_dir, "error_vs_actual_yield.png"), dpi=300, bbox_inches="tight")
    plt.close()


def save_best_params_report(summary_rows):
    best_params_payload = {
        row["crop"]: {
            "best_params": row["best_params"],
            "cv_r2": row["cv_r2"],
            "test_r2": row["test_r2"],
            "train_r2": row["train_r2"],
            "gap": row["gap"],
            "rmse": row["rmse"],
            "mae": row["mae"],
            "mape": row["mape"],
            "selected_feature_count": row["selected_feature_count"],
        }
        for row in summary_rows
    }

    with open(os.path.join(REPORTS_DIR, "best_optimization_params.json"), "w", encoding="utf-8") as f:
        json.dump(best_params_payload, f, indent=2)


def main():
    df = pd.read_csv(DATASET_PATH)
    summary_rows = []

    for crop in get_target_crops(df):
        df_crop = df[df[CROP_COLUMN] == crop].copy()
        if df_crop.empty:
            raise ValueError(f"Crop '{crop}' was not found in the dataset.")
        crop_result = train_crop_model(df_crop, crop)
        save_crop_outputs(crop, crop_result)
        save_crop_figures(crop, crop_result)
        summary_rows.append(crop_result["metrics"])

    summary_df = pd.DataFrame(summary_rows).sort_values(by="test_r2", ascending=False)
    summary_df.to_csv(os.path.join(REPORTS_DIR, "summary_metrics.csv"), index=False)
    save_best_params_report(summary_rows)

    if not summary_df.empty:
        best_row = summary_df.iloc[0]
        logger.info(
            "Best crop by test R2: %s (test_r2=%.4f, cv_r2=%.4f, gap=%.4f)",
            best_row["crop"],
            best_row["test_r2"],
            best_row["cv_r2"],
            best_row["gap"],
        )

    print(f"Done. Log saved into {LOG_FILE}")
    print(f"Tree optimization artifacts saved into {OUTPUT_ROOT}")


if __name__ == "__main__":
    stop_spinner = threading.Event()
    spinner_thread = threading.Thread(target=run_spinner, args=(stop_spinner,), daemon=True)
    spinner_thread.start()
    try:
        main()
    finally:
        stop_spinner.set()
        spinner_thread.join()
