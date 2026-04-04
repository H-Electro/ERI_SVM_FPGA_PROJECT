import itertools
import json
import logging
import os
import pickle
import struct
import sys
import threading
import time

import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns
from sklearn.ensemble import RandomForestRegressor
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder, MinMaxScaler

# =============================================================================
# Configuration
# =============================================================================
SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
BASE_DIR = os.path.abspath(os.path.join(SCRIPT_DIR, "..", ".."))

SCALE_OPTION = 2

MODEL_DIR = os.path.join(SCRIPT_DIR, "rf_output")
FIG_DIR = os.path.join(SCRIPT_DIR, "output_figures_rf")
LOG_DIR = os.path.join(SCRIPT_DIR, "log")

TRAIN_LOG_FILE = os.path.join(LOG_DIR, "training_rf.log")
ENCODER_LOG_FILE = os.path.join(LOG_DIR, "encoder.log")

os.makedirs(MODEL_DIR, exist_ok=True)
os.makedirs(FIG_DIR, exist_ok=True)
os.makedirs(LOG_DIR, exist_ok=True)

# =============================================================================
# Logger Setup
# =============================================================================
def create_file_logger(name, log_file, level=logging.INFO):
    logger = logging.getLogger(name)
    logger.setLevel(level)
    logger.propagate = False

    if logger.handlers:
        logger.handlers.clear()

    handler = logging.FileHandler(log_file, mode="w", encoding="utf-8")
    handler.setLevel(level)
    handler.setFormatter(logging.Formatter("%(asctime)s - %(levelname)s - %(message)s"))
    logger.addHandler(handler)

    return logger


train_logger = create_file_logger("training_rf_logger", TRAIN_LOG_FILE)
encoder_logger = create_file_logger("encoder_rf_logger", ENCODER_LOG_FILE)

# =============================================================================
# Optimized Parameters
# Replace these with your tuned parameters if available.
# =============================================================================
OPTIMIZED_RF_PARAMS = {
    "Cotton": {
        "n_estimators": 300,
        "max_depth": 10,
        "min_samples_split": 10,
        "min_samples_leaf": 4,
        "max_features": "sqrt",
        "bootstrap": True,
    },
    "Maize": {
        "n_estimators": 300,
        "max_depth": 10,
        "min_samples_split": 10,
        "min_samples_leaf": 2,
        "max_features": "sqrt",
        "bootstrap": True,
    },
    "Potato": {
        "n_estimators": 300,
        "max_depth": 10,
        "min_samples_split": 10,
        "min_samples_leaf": 2,
        "max_features": "sqrt",
        "bootstrap": True,
    },
    "Rice": {
        "n_estimators": 300,
        "max_depth": 12,
        "min_samples_split": 10,
        "min_samples_leaf": 4,
        "max_features": "sqrt",
        "bootstrap": True,
    },
    "Sugarcane": {
        "n_estimators": 300,
        "max_depth": 10,
        "min_samples_split": 10,
        "min_samples_leaf": 4,
        "max_features": "sqrt",
        "bootstrap": True,
    },
    "Wheat": {
        "n_estimators": 300,
        "max_depth": 10,
        "min_samples_split": 10,
        "min_samples_leaf": 2,
        "max_features": "sqrt",
        "bootstrap": True,
    },
}

# =============================================================================
# Utility Functions
# =============================================================================
def run_spinner(stop_event, message="Running"):
    for frame in itertools.cycle(["|", "/", "-", "\\"]):
        if stop_event.is_set():
            break
        sys.stdout.write(f"\r{message} {frame}")
        sys.stdout.flush()
        time.sleep(0.1)
    sys.stdout.write("\r" + " " * (len(message) + 2) + "\r")
    sys.stdout.flush()


def float_to_ieee754_hex(value):
    packed = struct.pack(">d", float(value))
    return f"64'h{''.join(f'{b:02X}' for b in packed)}"


def convert_mapping_to_python_int(mapping):
    return {key: int(value) for key, value in mapping.items()}


def export_forest_metadata(model):
    metadata = {
        "n_estimators": model.n_estimators,
        "n_features_in": model.n_features_in_,
        "feature_importances": model.feature_importances_.tolist(),
        "estimators": [],
    }

    for idx, estimator in enumerate(model.estimators_):
        tree = estimator.tree_
        estimator_info = {
            "tree_index": idx,
            "node_count": int(tree.node_count),
            "children_left": tree.children_left.tolist(),
            "children_right": tree.children_right.tolist(),
            "feature": tree.feature.tolist(),
            "threshold": tree.threshold.tolist(),
            "value": tree.value[:, 0, 0].tolist(),
        }
        metadata["estimators"].append(estimator_info)

    return metadata


def export_forest_python(model, feature_names, function_name="predict_forest"):
    lines = []
    lines.append(f"def {function_name}(features):")

    for tree_index, estimator in enumerate(model.estimators_):
        tree = estimator.tree_
        lines.append(f"    def tree_{tree_index}():")

        def recurse(node, depth):
            indent = "    " * depth

            if tree.feature[node] != -2:
                feature_name = feature_names[tree.feature[node]]
                threshold = tree.threshold[node]
                lines.append(f"{indent}if features['{feature_name}'] <= {threshold:.10f}:")
                recurse(tree.children_left[node], depth + 1)
                lines.append(f"{indent}else:")
                recurse(tree.children_right[node], depth + 1)
            else:
                value = tree.value[node][0][0]
                lines.append(f"{indent}return {value:.10f}")

        recurse(0, 2)
        lines.append("")

    prediction_terms = [f"tree_{i}()" for i in range(len(model.estimators_))]
    lines.append(f"    return ({' + '.join(prediction_terms)}) / {len(model.estimators_)}")

    return "\n".join(lines) + "\n"


# =============================================================================
# Dataset
# =============================================================================
df = pd.read_csv(os.path.join(BASE_DIR, "datasets", "crop-yield.csv"))
all_crops = df["Crop_Type"].unique()

# =============================================================================
# Training Loop
# =============================================================================
best_crop = None
best_r2 = float("-inf")

stop_spinner = threading.Event()
spinner_thread = threading.Thread(
    target=run_spinner,
    args=(stop_spinner, "Training Random Forest"),
    daemon=True,
)
spinner_thread.start()

try:
    for crop in all_crops:
        train_logger.info("==================================================")
        train_logger.info("Training crop: %s", crop)
        train_logger.info("==================================================")

        df_crop = df[df["Crop_Type"] == crop].copy()

        X = df_crop.drop(["Crop_Yield_ton_per_hectare", "Crop_Type"], axis=1)
        y = df_crop["Crop_Yield_ton_per_hectare"]

        encoders = {}
        cat_cols = X.select_dtypes(include="object").columns

        encoder_logger.info("==================================================")
        encoder_logger.info("Crop: %s", crop)
        encoder_logger.info("==================================================")

        for col in cat_cols:
            le = LabelEncoder()
            X[col] = le.fit_transform(X[col])
            encoders[col] = le

            mapping = dict(zip(le.classes_, le.transform(le.classes_)))
            mapping = convert_mapping_to_python_int(mapping)

            encoder_logger.info("Column: %s", col)
            encoder_logger.info("Mapping: %s", mapping)

        scaler = None
        if SCALE_OPTION == 1:
            scaler = MinMaxScaler()
            X_used = scaler.fit_transform(X)
        else:
            X_used = X.values

        X_train, X_test, y_train, y_test = train_test_split(
            X_used,
            y,
            test_size=0.2,
            random_state=42,
        )

        params = {
            "random_state": 42,
            "n_jobs": -1,
            **OPTIMIZED_RF_PARAMS.get(crop, {}),
        }

        train_logger.info("Applied parameters: %s", params)

        model = RandomForestRegressor(**params)
        model.fit(X_train, y_train)

        y_pred = model.predict(X_test)
        r2 = model.score(X_test, y_test)
        mae = np.mean(np.abs(y_test - y_pred))
        rmse = np.sqrt(np.mean((y_test - y_pred) ** 2))
        mape = np.mean(np.abs((y_test - y_pred) / (y_test + 1e-8))) * 100

        train_logger.info(
            "Metrics | R2: %.4f | MAE: %.4f | RMSE: %.4f | MAPE: %.2f%%",
            r2,
            mae,
            rmse,
            mape,
        )

        if r2 > best_r2:
            best_r2 = r2
            best_crop = crop

        crop_dir = os.path.join(MODEL_DIR, crop.replace(" ", "_"))
        os.makedirs(crop_dir, exist_ok=True)

        with open(os.path.join(crop_dir, "model.pkl"), "wb") as f:
            pickle.dump(model, f)

        with open(os.path.join(crop_dir, "encoders.pkl"), "wb") as f:
            pickle.dump(encoders, f)

        with open(os.path.join(crop_dir, "used_rf_params.json"), "w", encoding="utf-8") as f:
            json.dump(params, f, indent=2)

        if scaler is not None:
            with open(os.path.join(crop_dir, "scaler.pkl"), "wb") as f:
                pickle.dump(scaler, f)

        feature_names = list(X.columns)

        with open(os.path.join(crop_dir, "forest_metadata.json"), "w", encoding="utf-8") as f:
            json.dump(export_forest_metadata(model), f, indent=2)

        with open(os.path.join(crop_dir, "forest.py"), "w", encoding="utf-8") as f:
            f.write(export_forest_python(model, feature_names))

        importances = model.feature_importances_
        feature_importance_list = sorted(
            zip(feature_names, importances),
            key=lambda item: item[1],
            reverse=True,
        )

        train_logger.info("Feature importance:")
        for name, score in feature_importance_list:
            train_logger.info("%s: %.6f", name, score)

        crop_fig_dir = os.path.join(FIG_DIR, crop.replace(" ", "_"))
        os.makedirs(crop_fig_dir, exist_ok=True)

        residuals = y_test - y_pred

        plt.figure(figsize=(8, 6))
        sns.histplot(residuals, kde=True, bins=20)
        plt.xlabel("Residuals (Actual - Predicted)")
        plt.title(f"Residual Distribution - {crop}")
        plt.grid(True)
        plt.savefig(
            os.path.join(crop_fig_dir, "residuals.png"),
            dpi=300,
            bbox_inches="tight",
        )
        plt.close()

        plt.figure(figsize=(10, 6))
        sns.barplot(
            x=[score for _, score in feature_importance_list],
            y=[name for name, _ in feature_importance_list],
        )
        plt.title(f"Feature Importance - {crop}")
        plt.xlabel("Importance Score")
        plt.ylabel("Features")
        plt.savefig(
            os.path.join(crop_fig_dir, "feature_importance.png"),
            dpi=300,
            bbox_inches="tight",
        )
        plt.close()

        plt.figure(figsize=(8, 6))
        sns.scatterplot(x=y_test, y=y_pred)
        plt.xlabel("Actual Yield")
        plt.ylabel("Predicted Yield")
        plt.title(f"Actual vs Predicted - {crop}")
        plt.savefig(
            os.path.join(crop_fig_dir, "actual_vs_predicted.png"),
            dpi=300,
            bbox_inches="tight",
        )
        plt.close()

        if X_test.shape[1] > 9:
            plt.figure(figsize=(8, 6))
            sns.scatterplot(x=X_test[:, 9], y=residuals)
            plt.xlabel(feature_names[9])
            plt.ylabel("Residuals")
            plt.title(f"Residuals vs {feature_names[9]} - {crop}")
            plt.savefig(
                os.path.join(crop_fig_dir, f"error_vs_{feature_names[9]}.png"),
                dpi=300,
                bbox_inches="tight",
            )
            plt.close()

    train_logger.info("==================================================")
    train_logger.info("All crop-specific Random Forest models generated successfully.")
    if best_crop is not None:
        train_logger.info("Best crop by R2: %s (R2: %.4f)", best_crop, best_r2)
    train_logger.info("==================================================")

finally:
    stop_spinner.set()
    spinner_thread.join()

print(f"Logs saved: {TRAIN_LOG_FILE} and {ENCODER_LOG_FILE}")