from pathlib import Path


REPO_ROOT = Path(__file__).resolve().parents[2]

PYTHON_DIR = REPO_ROOT / "python"
DATA_DIR = REPO_ROOT / "data"
RAW_DATA_DIR = DATA_DIR / "raw"
ARTIFACTS_DIR = REPO_ROOT / "artifacts"
MODEL_ROOT = ARTIFACTS_DIR / "models" / "rf_models"
FIGURES_ROOT = ARTIFACTS_DIR / "figures"
LOGS_DIR = ARTIFACTS_DIR / "logs"
HARDWARE_DIR = REPO_ROOT / "hardware"
RTL_DIR = HARDWARE_DIR / "rtl"
TB_DIR = HARDWARE_DIR / "tb"
SIM_DIR = HARDWARE_DIR / "sim"
SIM_GENERATED_DIR = SIM_DIR / "generated"

DATASET_PATH = RAW_DATA_DIR / "crop-yield.csv"
TRAINING_LOG_PATH = LOGS_DIR / "training_rf.log"


def ensure_runtime_dirs() -> None:
    for directory in (
        RAW_DATA_DIR,
        MODEL_ROOT,
        FIGURES_ROOT,
        LOGS_DIR,
        SIM_GENERATED_DIR,
    ):
        directory.mkdir(parents=True, exist_ok=True)
