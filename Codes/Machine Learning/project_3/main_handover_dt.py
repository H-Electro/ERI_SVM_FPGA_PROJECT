import sys
import warnings
from pathlib import Path

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

from sklearn.compose import ColumnTransformer
from sklearn.impute import SimpleImputer
from sklearn.metrics import (
    accuracy_score,
    f1_score,
    roc_auc_score,
    classification_report,
    mean_squared_error,
    r2_score,
)
from sklearn.model_selection import StratifiedKFold, cross_val_predict
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import OneHotEncoder
from sklearn.tree import DecisionTreeClassifier, plot_tree


warnings.filterwarnings("ignore")

DATA_FILE = "datasets/cellular_handover_dataset.csv"
FIG_DIR = Path("figures")
OUT_DIR = Path("outputs")
LOG_FILE = OUT_DIR / "report.log"
ANALYSIS_FILE = OUT_DIR / "analysis_report.md"

RANDOM_STATE = 42
N_SPLITS = 5


class ConsoleColor:
    RESET = "\033[0m"
    BOLD = "\033[1m"
    RED = "\033[91m"
    GREEN = "\033[92m"
    YELLOW = "\033[93m"
    BLUE = "\033[94m"
    CYAN = "\033[96m"


def supports_color():
    return sys.stdout.isatty()


def color_text(text, color):
    if supports_color():
        return f"{color}{text}{ConsoleColor.RESET}"
    return text


def ensure_dirs():
    FIG_DIR.mkdir(parents=True, exist_ok=True)
    OUT_DIR.mkdir(parents=True, exist_ok=True)


def clean_numeric_series(series):
    return (
        series.astype(str)
        .str.extract(r"([-+]?\d*\.?\d+)", expand=False)
        .astype(float)
    )


def load_and_prepare_data(filepath):
    df = pd.read_csv(filepath)
    df.columns = [c.strip() for c in df.columns]

    df["Timestamp"] = pd.to_datetime(df["Timestamp"], errors="coerce")
    df = df.sort_values("Timestamp").reset_index(drop=True)

    for col in ["RSRP", "RSRQ", "SINR", "Downlink(Mbps)", "Uplink(Mbps)", "Velocity(km/h)"]:
        df[col] = clean_numeric_series(df[col])

    df["PCI"] = pd.to_numeric(df["PCI"], errors="coerce")

    df["Handover"] = (df["PCI"] != df["PCI"].shift(-1)).astype(int)
    df.loc[df.index[-1], "Handover"] = 0

    df["hour"] = df["Timestamp"].dt.hour
    df["minute"] = df["Timestamp"].dt.minute

    for col in ["RSRP", "RSRQ", "SINR", "Velocity(km/h)"]:
        df[f"{col}_lag1"] = df[col].shift(1)

    return df


def build_model(num_features, cat_features):
    num_pipe = Pipeline([
        ("imputer", SimpleImputer(strategy="median"))
    ])

    cat_pipe = Pipeline([
        ("imputer", SimpleImputer(strategy="most_frequent")),
        ("onehot", OneHotEncoder(handle_unknown="ignore"))
    ])

    preprocessor = ColumnTransformer([
        ("num", num_pipe, num_features),
        ("cat", cat_pipe, cat_features)
    ])

    model = DecisionTreeClassifier(
        max_depth=6,
        min_samples_leaf=8,
        class_weight="balanced",
        random_state=RANDOM_STATE
    )

    return Pipeline([
        ("preprocessor", preprocessor),
        ("model", model)
    ])


def plot_class_distribution(df):
    plt.figure(figsize=(6, 4))
    df["Handover"].value_counts().plot(kind="bar")
    plt.title("Class Distribution")
    plt.tight_layout()
    plt.savefig(FIG_DIR / "01_class_distribution.png")
    plt.close()


def plot_pci(df):
    plt.figure(figsize=(12, 4))
    plt.plot(df["Timestamp"], df["PCI"], label="PCI")

    ho = df[df["Handover"] == 1]
    plt.scatter(ho["Timestamp"], ho["PCI"], color="red", s=10, label="Handover")

    plt.legend()
    plt.title("PCI Changes")
    plt.tight_layout()
    plt.savefig(FIG_DIR / "02_pci.png")
    plt.close()


def plot_signal_metrics(df):
    fig, axes = plt.subplots(3, 1, figsize=(14, 10), sharex=True)

    ho = df[df["Handover"] == 1]

    axes[0].plot(df["Timestamp"], df["RSRP"], linewidth=2, color="tab:blue", label="RSRP")
    if not ho.empty:
        axes[0].scatter(ho["Timestamp"], ho["RSRP"], color="black", s=20, label="Handover")
    axes[0].set_ylabel("RSRP (dBm)")
    axes[0].set_title("RSRP Over Time")
    axes[0].grid(alpha=0.3)
    axes[0].legend()

    axes[1].plot(df["Timestamp"], df["RSRQ"], linewidth=2, color="tab:orange", label="RSRQ")
    if not ho.empty:
        axes[1].scatter(ho["Timestamp"], ho["RSRQ"], color="black", s=20, label="Handover")
    axes[1].set_ylabel("RSRQ (dB)")
    axes[1].set_title("RSRQ Over Time")
    axes[1].grid(alpha=0.3)
    axes[1].legend()

    axes[2].plot(df["Timestamp"], df["SINR"], linewidth=2, color="tab:green", label="SINR")
    if not ho.empty:
        axes[2].scatter(ho["Timestamp"], ho["SINR"], color="black", s=20, label="Handover")
    axes[2].set_ylabel("SINR (dB)")
    axes[2].set_xlabel("Time")
    axes[2].set_title("SINR Over Time")
    axes[2].grid(alpha=0.3)
    axes[2].legend()

    plt.tight_layout()
    plt.savefig(FIG_DIR / "03_signal_metrics.png")
    plt.close()


def plot_feature_importance(model):
    importances = model.named_steps["model"].feature_importances_
    names = model.named_steps["preprocessor"].get_feature_names_out()

    idx = np.argsort(importances)[-15:]

    plt.figure(figsize=(8, 6))
    plt.barh(range(len(idx)), importances[idx], color="tab:purple")
    plt.yticks(range(len(idx)), names[idx])
    plt.title("Feature Importance")
    plt.tight_layout()
    plt.savefig(FIG_DIR / "04_feature_importance.png")
    plt.close()


def plot_tree_model(model):
    names = model.named_steps["preprocessor"].get_feature_names_out()

    plt.figure(figsize=(20, 10))
    plot_tree(
        model.named_steps["model"],
        feature_names=names,
        class_names=["No HO", "HO"],
        filled=True,
        max_depth=3
    )
    plt.tight_layout()
    plt.savefig(FIG_DIR / "05_tree.png")
    plt.close()


def rate_metric(name, value):
    if name == "accuracy":
        if value >= 0.90:
            return "excellent"
        if value >= 0.80:
            return "good"
        if value >= 0.70:
            return "fair"
        return "weak"

    if name == "f1":
        if value >= 0.80:
            return "excellent"
        if value >= 0.65:
            return "good"
        if value >= 0.50:
            return "fair"
        return "weak"

    if name == "roc_auc":
        if value >= 0.90:
            return "excellent"
        if value >= 0.80:
            return "good"
        if value >= 0.70:
            return "fair"
        return "weak"

    if name == "mse":
        if value <= 0.05:
            return "excellent"
        if value <= 0.10:
            return "good"
        if value <= 0.20:
            return "fair"
        return "weak"

    if name == "r2":
        if value >= 0.60:
            return "excellent"
        if value >= 0.40:
            return "good"
        if value >= 0.20:
            return "fair"
        return "weak"

    return "unknown"


def metric_color(rating):
    if rating == "excellent":
        return ConsoleColor.GREEN
    if rating == "good":
        return ConsoleColor.CYAN
    if rating == "fair":
        return ConsoleColor.YELLOW
    return ConsoleColor.RED


def build_report_text(df, accuracy, f1, roc_auc, mse, r2, report_text):
    positives = int(df["Handover"].sum())
    negatives = int((df["Handover"] == 0).sum())
    total = len(df)
    positive_rate = positives / total if total else 0.0

    acc_rating = rate_metric("accuracy", accuracy)
    f1_rating = rate_metric("f1", f1)
    roc_rating = rate_metric("roc_auc", roc_auc)
    mse_rating = rate_metric("mse", mse)
    r2_rating = rate_metric("r2", r2)

    lines = []
    lines.append("HANDOVER PREDICTION REPORT")
    lines.append("=" * 60)
    lines.append(f"Dataset file: {DATA_FILE}")
    lines.append(f"Total samples: {total}")
    lines.append(f"Handover samples: {positives}")
    lines.append(f"Non-handover samples: {negatives}")
    lines.append(f"Handover ratio: {positive_rate:.4f}")
    lines.append("")
    lines.append("Cross-validation results")
    lines.append(f"Accuracy : {accuracy:.6f}  [{acc_rating}]")
    lines.append(f"F1-score : {f1:.6f}  [{f1_rating}]")
    lines.append(f"ROC-AUC  : {roc_auc:.6f}  [{roc_rating}]")
    lines.append(f"MSE      : {mse:.6f}  [{mse_rating}]")
    lines.append(f"R2       : {r2:.6f}  [{r2_rating}]")
    lines.append("")
    lines.append("Result interpretation")
    lines.append("- Accuracy shows overall prediction correctness across all samples.")
    lines.append("- F1-score is important here because handover events are less frequent than non-handover events.")
    lines.append("- ROC-AUC measures how well the model separates handover from non-handover behavior.")
    lines.append("- MSE and R2 are computed from predicted probabilities, giving an additional view of score quality.")
    lines.append("")
    lines.append("Benefits of these results")
    lines.append("- Better handover prediction can support earlier cell-switch preparation.")
    lines.append("- Earlier preparation can reduce call drops and service interruption.")
    lines.append("- Network teams can use the results to identify weak-signal and unstable mobility zones.")
    lines.append("- Feature importance helps explain which radio measurements influence decisions most.")
    lines.append("- The model is lightweight enough to be useful for real-time telecom and hardware-oriented workflows.")
    lines.append("")
    lines.append("Generated outputs")
    lines.append(f"- Predictions CSV: {OUT_DIR / 'predictions.csv'}")
    lines.append(f"- Log report: {LOG_FILE}")
    lines.append(f"- Figures folder: {FIG_DIR}")
    lines.append("")
    lines.append("Classification report")
    lines.append(report_text.strip())

    return "\n".join(lines), {
        "accuracy": acc_rating,
        "f1": f1_rating,
        "roc_auc": roc_rating,
        "mse": mse_rating,
        "r2": r2_rating,
    }


def build_analysis_report(df, model, accuracy, f1, roc_auc, mse, r2):
    positives = int(df["Handover"].sum())
    negatives = int((df["Handover"] == 0).sum())
    total = len(df)

    raw_features = [
        ("Timestamp", "Measurement time for each network sample."),
        ("DeviceID", "Unique device identifier for the phone or modem."),
        ("deviceMake", "Device manufacturer, such as Samsung."),
        ("deviceModel", "Specific device model."),
        ("Network provi.", "Mobile network provider/operator."),
        ("NetworkType", "Access technology, such as LTE (4G)."),
        ("RSRP", "Reference Signal Received Power, a key signal strength indicator."),
        ("RSRQ", "Reference Signal Received Quality, showing radio link quality."),
        ("SINR", "Signal-to-Interference-plus-Noise Ratio, showing signal clarity."),
        ("PCI", "Physical Cell Identity, which identifies the serving cell."),
        ("Downlink(Mbps)", "Download throughput measured in Mbps."),
        ("Uplink(Mbps)", "Upload throughput measured in Mbps."),
        ("Velocity(km/h)", "Estimated user speed."),
        ("Latitude", "Geographic latitude of the measurement point."),
        ("Longitude", "Geographic longitude of the measurement point."),
    ]

    engineered_features = [
        ("Handover", "Target label created by comparing the current PCI with the next PCI. If the PCI changes, the row is marked as a handover event."),
        ("hour", "Hour extracted from the timestamp to capture daily usage and mobility patterns."),
        ("minute", "Minute extracted from the timestamp to preserve short-term timing information."),
        ("RSRP_lag1", "Previous-sample RSRP value. Helps the model see short-term signal trend instead of only the current point."),
        ("RSRQ_lag1", "Previous-sample RSRQ value. Helps detect link-quality degradation before a handover."),
        ("SINR_lag1", "Previous-sample SINR value. Helps detect rising interference or weak radio conditions."),
        ("Pred", "Predicted class written to the output CSV after cross-validation."),
        ("Prob", "Predicted handover probability written to the output CSV after cross-validation."),
    ]

    encoded_details = [
        ("One-hot encoded NetworkType", "Converts each network type category into machine-readable binary columns."),
        ("One-hot encoded deviceMake", "Converts each device brand into machine-readable binary columns."),
    ]

    feature_names = model.named_steps["preprocessor"].get_feature_names_out()
    importances = model.named_steps["model"].feature_importances_
    ranked_idx = np.argsort(importances)[::-1]
    top_features = [
        (feature_names[i], float(importances[i]))
        for i in ranked_idx[:10]
        if importances[i] > 0
    ]

    lines = []
    lines.append("# Handover Analysis Report")
    lines.append("")
    lines.append("## Project Summary")
    lines.append(f"- Dataset file: `{DATA_FILE}`")
    lines.append(f"- Total samples: {total}")
    lines.append(f"- Handover samples: {positives}")
    lines.append(f"- Non-handover samples: {negatives}")
    lines.append(f"- Accuracy: {accuracy:.6f}")
    lines.append(f"- F1-score: {f1:.6f}")
    lines.append(f"- ROC-AUC: {roc_auc:.6f}")
    lines.append(f"- MSE: {mse:.6f}")
    lines.append(f"- R2: {r2:.6f}")
    lines.append("")
    lines.append("## Original Dataset Features And Meaning")
    for name, meaning in raw_features:
        if name in df.columns or name == "Network provi.":
            lines.append(f"- `{name}`: {meaning}")
    lines.append("")
    lines.append("## Features Created By The Code")
    for name, meaning in engineered_features:
        if name in df.columns:
            lines.append(f"- `{name}`: {meaning}")
    lines.append("")
    lines.append("## Extra Features Created Inside The Model")
    for name, meaning in encoded_details:
        lines.append(f"- {name}: {meaning}")
    lines.append(f"- Final transformed feature count used by the decision tree: {len(feature_names)}")
    lines.append("")
    lines.append("## Why These New Features Help")
    lines.append("- `hour` and `minute` help the model learn time-related behavior, such as recurring mobility conditions or traffic patterns.")
    lines.append("- Lag features let the model compare the current radio state with the previous one, which is useful because handover usually follows a change trend, not a single isolated value.")
    lines.append("- The `Handover` label turns raw network logs into a supervised learning problem by defining what event the model should predict.")
    lines.append("- One-hot encoding lets the tree use categorical information without forcing fake numeric order between categories.")
    lines.append("")
    lines.append("## Benefits Of Machine Learning In This Project")
    lines.append("- The model can predict likely handover events before or as they happen, instead of waiting for a manual rule check after the fact.")
    lines.append("- It combines many radio, mobility, and device signals at once, which is harder to do with fixed thresholds.")
    lines.append("- It can highlight the most influential measurements using feature importance, which makes the system easier to explain.")
    lines.append("- A decision tree is lightweight and interpretable, which is helpful for FPGA-oriented or embedded deployment studies.")
    lines.append("- Better handover prediction can support smoother mobility, fewer interruptions, and better preparation for cell switching.")
    lines.append("")
    lines.append("## Benefits Of Each Figure")
    lines.append("- `01_class_distribution.png`: Shows whether the dataset is balanced or imbalanced. This matters because handover events are much rarer than normal samples, so accuracy alone can be misleading.")
    lines.append("- `02_pci.png`: Shows when the serving cell identity changes over time. This helps verify that the generated `Handover` label is meaningful because handover is directly tied to PCI transitions.")
    lines.append("- `03_signal_metrics.png`: Shows how RSRP, RSRQ, and SINR behave around handover points. This helps explain whether signal strength, quality, or interference is related to the switching event.")
    lines.append("- `04_feature_importance.png`: Shows which transformed features influenced the decision tree most. This is useful for interpretation, feature selection, and hardware simplification.")
    lines.append("- `05_tree.png`: Shows the learned decision logic of the model. This is useful because the project can explain the model rules clearly instead of treating the predictor like a black box.")
    lines.append("")
    lines.append("## Top Learned Features")
    if top_features:
        for name, importance in top_features:
            lines.append(f"- `{name}`: importance = {importance:.6f}")
    else:
        lines.append("- No non-zero feature importance values were found.")
    lines.append("")
    lines.append("## Short Interpretation")
    lines.append("- The dataset is strongly imbalanced, so F1-score and ROC-AUC are more informative than accuracy alone.")
    lines.append("- The current model separates classes fairly well by score (`ROC-AUC`) but still misses precision on the minority handover class, which means it produces extra false alarms.")
    lines.append("- Even with that limitation, the pipeline is useful as a first interpretable baseline for telecom handover prediction.")
    lines.append("")
    lines.append("## Final Note")
    lines.append("- This project mainly demonstrates a machine learning approach that can be used for network analysis and optimization.")
    lines.append("- The current implementation should be viewed as a proof of concept that explains how handover behavior can be modeled from telecom measurements.")
    lines.append("- If this same pipeline is trained with higher-quality datasets collected directly from network operators or equipment vendors, the analysis will become clearer and more reliable.")
    lines.append("- With richer industry-grade data, the model can provide stronger insights for network planning, mobility management, and handover optimization.")

    return "\n".join(lines) + "\n"


def print_colored_summary(accuracy, f1, roc_auc, mse, r2, ratings):
    print(color_text("\nHANDOVER PREDICTION SUMMARY", ConsoleColor.BOLD + ConsoleColor.BLUE))
    print(color_text("=" * 35, ConsoleColor.BLUE))

    print(color_text(f"Accuracy : {accuracy:.6f}  [{ratings['accuracy']}]", metric_color(ratings["accuracy"])))
    print(color_text(f"F1-score : {f1:.6f}  [{ratings['f1']}]", metric_color(ratings["f1"])))
    print(color_text(f"ROC-AUC  : {roc_auc:.6f}  [{ratings['roc_auc']}]", metric_color(ratings["roc_auc"])))
    print(color_text(f"MSE      : {mse:.6f}  [{ratings['mse']}]", metric_color(ratings["mse"])))
    print(color_text(f"R2       : {r2:.6f}  [{ratings['r2']}]", metric_color(ratings["r2"])))

    print(color_text("\nBenefits", ConsoleColor.BOLD + ConsoleColor.BLUE))
    print(color_text("- Supports proactive LTE handover handling.", ConsoleColor.GREEN))
    print(color_text("- Helps reduce connection instability during mobility.", ConsoleColor.GREEN))
    print(color_text("- Gives interpretable behavior through feature importance.", ConsoleColor.GREEN))
    print(color_text(f"\nSaved report: {LOG_FILE}", ConsoleColor.CYAN))


def write_log_file(text):
    with open(LOG_FILE, "w", encoding="utf-8") as f:
        f.write(text + "\n")


def write_analysis_file(text):
    with open(ANALYSIS_FILE, "w", encoding="utf-8") as f:
        f.write(text)


def main():
    ensure_dirs()

    df = load_and_prepare_data(DATA_FILE)

    num_features = [
        "RSRP", "RSRQ", "SINR", "PCI",
        "Downlink(Mbps)", "Uplink(Mbps)",
        "Velocity(km/h)", "hour", "minute",
        "RSRP_lag1", "RSRQ_lag1", "SINR_lag1"
    ]

    cat_features = ["NetworkType", "deviceMake"]

    num_features = [c for c in num_features if c in df.columns]
    cat_features = [c for c in cat_features if c in df.columns]

    X = df[num_features + cat_features]
    y = df["Handover"]

    model = build_model(num_features, cat_features)

    cv = StratifiedKFold(n_splits=N_SPLITS, shuffle=True, random_state=RANDOM_STATE)

    y_pred = cross_val_predict(model, X, y, cv=cv)
    y_prob = cross_val_predict(model, X, y, cv=cv, method="predict_proba")[:, 1]

    accuracy = accuracy_score(y, y_pred)
    f1 = f1_score(y, y_pred)
    roc_auc = roc_auc_score(y, y_prob)
    mse = mean_squared_error(y, y_prob)
    r2 = r2_score(y, y_prob)
    report_text = classification_report(y, y_pred)

    print("Accuracy:", accuracy)
    print("F1:", f1)
    print("ROC-AUC:", roc_auc)
    print("MSE:", mse)
    print("R2:", r2)
    print(report_text)

    model.fit(X, y)

    df["Pred"] = y_pred
    df["Prob"] = y_prob
    df.to_csv(OUT_DIR / "predictions.csv", index=False)

    plot_class_distribution(df)
    plot_pci(df)
    plot_signal_metrics(df)
    plot_feature_importance(model)
    plot_tree_model(model)

    report_body, ratings = build_report_text(df, accuracy, f1, roc_auc, mse, r2, report_text)
    write_log_file(report_body)
    analysis_body = build_analysis_report(df, model, accuracy, f1, roc_auc, mse, r2)
    write_analysis_file(analysis_body)
    print_colored_summary(accuracy, f1, roc_auc, mse, r2, ratings)


if __name__ == "__main__":
    main()
