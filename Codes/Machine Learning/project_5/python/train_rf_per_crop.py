import json
import logging
import pickle

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, MinMaxScaler

from python.rf_fpga.crop_config import get_crop_code_from_name
from python.rf_fpga.project_paths import (
    DATASET_PATH,
    FIGURES_ROOT,
    MODEL_ROOT,
    TRAINING_LOG_PATH,
    ensure_runtime_dirs,
)

OUTPUT_DIR = str(MODEL_ROOT)
FIG_DIR = str(FIGURES_ROOT)
LOG_PATH = str(TRAINING_LOG_PATH)

SCALE_OPTION = 2
TEST_SIZE = 0.2
RANDOM_STATE = 42

ensure_runtime_dirs()

logging.basicConfig(
    filename=LOG_PATH,
    filemode="w",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s",
)

logger = logging.getLogger(__name__)

RF_PARAMS_BY_CROP = {
    "Cotton": {"n_estimators": 16, "max_depth": 8, "min_samples_split": 10, "min_samples_leaf": 4, "max_features": "sqrt", "bootstrap": True},
    "Rice": {"n_estimators": 16, "max_depth": 10, "min_samples_split": 10, "min_samples_leaf": 4, "max_features": "sqrt", "bootstrap": True},
    "Maize": {"n_estimators": 16, "max_depth": 8, "min_samples_split": 10, "min_samples_leaf": 2, "max_features": "sqrt", "bootstrap": True},
    "Potato": {"n_estimators": 16, "max_depth": 8, "min_samples_split": 10, "min_samples_leaf": 2, "max_features": "sqrt", "bootstrap": True},
    "Sugarcane": {"n_estimators": 16, "max_depth": 8, "min_samples_split": 10, "min_samples_leaf": 4, "max_features": "sqrt", "bootstrap": True},
    "Wheat": {"n_estimators": 16, "max_depth": 8, "min_samples_split": 10, "min_samples_leaf": 2, "max_features": "sqrt", "bootstrap": True},
}


def evaluate_regression(y_true, y_pred):
    err = y_true - y_pred
    mae = float(np.mean(np.abs(err)))
    rmse = float(np.sqrt(np.mean(err ** 2)))
    mape = float(np.mean(np.abs(err / (y_true + 1e-8))) * 100.0)
    ss_res = float(np.sum((y_true - y_pred) ** 2))
    ss_tot = float(np.sum((y_true - np.mean(y_true)) ** 2))
    r2 = 1.0 - (ss_res / ss_tot if ss_tot > 0 else 0.0)
    return {"r2": r2, "mae": mae, "rmse": rmse, "mape": mape}


def safe_name(name):
    return str(name).replace(" ", "_").replace("/", "_").replace("\\", "_")


def main():
    logger.info("========== Random Forest Training Started ==========")
    logger.info("Dataset path: %s", DATASET_PATH)
    logger.info("Model output directory: %s", OUTPUT_DIR)
    logger.info("Figure output directory: %s", FIG_DIR)
    logger.info("Scale option: %s | Test size: %s | Random state: %s", SCALE_OPTION, TEST_SIZE, RANDOM_STATE)

    df = pd.read_csv(DATASET_PATH)
    logger.info("Dataset loaded successfully with shape: %s", df.shape)

    all_crops = df["Crop_Type"].unique()
    logger.info("Found %d crop types: %s", len(all_crops), list(all_crops))

    for crop in all_crops:
        logger.info("--------------------------------------------------")
        logger.info("Processing crop: %s", crop)

        df_crop = df[df["Crop_Type"] == crop].copy()
        logger.info("Crop subset shape for %s: %s", crop, df_crop.shape)

        X = df_crop.drop(["Crop_Yield_ton_per_hectare", "Crop_Type"], axis=1)
        y = df_crop["Crop_Yield_ton_per_hectare"].values

        feature_names = list(X.columns)
        encoders = {}

        logger.info("Features for %s: %s", crop, feature_names)

        cat_cols = X.select_dtypes(include="object").columns
        logger.info("Categorical columns for %s: %s", crop, list(cat_cols))

        for col in cat_cols:
            le = LabelEncoder()
            X[col] = le.fit_transform(X[col])
            encoders[col] = le
            logger.info("Encoded column '%s' for crop %s", col, crop)

        scaler = None
        if SCALE_OPTION == 1:
            scaler = MinMaxScaler()
            X_used = scaler.fit_transform(X)
            logger.info("Applied MinMaxScaler for crop: %s", crop)
        else:
            X_used = X.values
            logger.info("No scaling applied for crop: %s", crop)

        X_train, X_test, y_train, y_test = train_test_split(
            X_used, y, test_size=TEST_SIZE, random_state=RANDOM_STATE
        )

        logger.info(
            "Train/test split for %s | X_train: %s | X_test: %s | y_train: %s | y_test: %s",
            crop,
            X_train.shape,
            X_test.shape,
            y_train.shape,
            y_test.shape,
        )

        params = {"random_state": RANDOM_STATE, "n_jobs": -1, **RF_PARAMS_BY_CROP.get(crop, {})}
        logger.info("Training parameters for %s: %s", crop, params)

        model = RandomForestRegressor(**params)
        model.fit(X_train, y_train)
        logger.info("Model training completed for crop: %s", crop)

        y_pred = model.predict(X_test)
        metrics = evaluate_regression(y_test, y_pred)

        r2 = metrics["r2"]
        mae = metrics["mae"]
        rmse = metrics["rmse"]
        mape = metrics["mape"]

        logger.info(
            "Metrics | R2: %.4f | MAE: %.4f | RMSE: %.4f | MAPE: %.2f%%",
            r2,
            mae,
            rmse,
            mape,
        )

        crop_safe = safe_name(crop)

        crop_dir = MODEL_ROOT / crop_safe
        crop_dir.mkdir(parents=True, exist_ok=True)

        with open(crop_dir / "model.pkl", "wb") as f:
            pickle.dump(model, f)

        with open(crop_dir / "encoders.pkl", "wb") as f:
            pickle.dump(encoders, f)

        if scaler is not None:
            with open(crop_dir / "scaler.pkl", "wb") as f:
                pickle.dump(scaler, f)

        with open(crop_dir / "feature_names.json", "w", encoding="utf-8") as f:
            json.dump(feature_names, f, indent=2)

        with open(crop_dir / "params.json", "w", encoding="utf-8") as f:
            json.dump(params, f, indent=2)

        with open(crop_dir / "metrics.json", "w", encoding="utf-8") as f:
            json.dump(metrics, f, indent=2)

        with open(crop_dir / "crop_info.json", "w", encoding="utf-8") as f:
            json.dump(
                {
                    "crop_name": crop,
                    "crop_code": get_crop_code_from_name(crop),
                },
                f,
                indent=2,
            )

        logger.info("Saved model artifacts in: %s", crop_dir)

        importances = model.feature_importances_
        feature_importance_list = sorted(
            zip(feature_names, importances),
            key=lambda item: item[1],
            reverse=True,
        )

        logger.info("Feature importance for %s:", crop)
        for name, score in feature_importance_list:
            logger.info("%s: %.6f", name, score)

        crop_fig_dir = FIGURES_ROOT / crop_safe
        crop_fig_dir.mkdir(parents=True, exist_ok=True)

        residuals = y_test - y_pred

        plt.figure(figsize=(8, 6))
        sns.histplot(residuals, kde=True, bins=20)
        plt.xlabel("Residuals (Actual - Predicted)")
        plt.title(f"Residual Distribution - {crop}")
        plt.grid(True)
        residuals_path = crop_fig_dir / "residuals.png"
        plt.savefig(residuals_path, dpi=300, bbox_inches="tight")
        plt.close()
        logger.info("Saved figure: %s", residuals_path)

        plt.figure(figsize=(10, 6))
        sns.barplot(
            x=[score for _, score in feature_importance_list],
            y=[name for name, _ in feature_importance_list],
        )
        plt.title(f"Feature Importance - {crop}")
        plt.xlabel("Importance Score")
        plt.ylabel("Features")
        feature_importance_path = crop_fig_dir / "feature_importance.png"
        plt.savefig(feature_importance_path, dpi=300, bbox_inches="tight")
        plt.close()
        logger.info("Saved figure: %s", feature_importance_path)

        plt.figure(figsize=(8, 6))
        sns.scatterplot(x=y_test, y=y_pred)
        plt.xlabel("Actual Yield")
        plt.ylabel("Predicted Yield")
        plt.title(f"Actual vs Predicted - {crop}")
        actual_vs_predicted_path = crop_fig_dir / "actual_vs_predicted.png"
        plt.savefig(actual_vs_predicted_path, dpi=300, bbox_inches="tight")
        plt.close()
        logger.info("Saved figure: %s", actual_vs_predicted_path)

        if X_test.shape[1] > 9:
            feature_9_name = safe_name(feature_names[9])
            plt.figure(figsize=(8, 6))
            sns.scatterplot(x=X_test[:, 9], y=residuals)
            plt.xlabel(feature_names[9])
            plt.ylabel("Residuals")
            plt.title(f"Residuals vs {feature_names[9]} - {crop}")
            error_vs_feature_path = crop_fig_dir / f"error_vs_{feature_9_name}.png"
            plt.savefig(error_vs_feature_path, dpi=300, bbox_inches="tight")
            plt.close()
            logger.info("Saved figure: %s", error_vs_feature_path)
        else:
            logger.info("Skipped residual-vs-feature plot for %s because X_test has only %d features", crop, X_test.shape[1])

        logger.info("Finished processing crop: %s", crop)

    logger.info("========== Random Forest Training Completed ==========")
    print("Training completed.")
    print("Models saved in:", OUTPUT_DIR)
    print("Figures saved in:", FIG_DIR)
    print("Log file:", LOG_PATH)


if __name__ == "__main__":
    main()

