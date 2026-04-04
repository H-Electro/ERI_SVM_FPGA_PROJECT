# Makefile for greenhouse and smart farming analysis
# This Makefile supports TWO different Python scripts
#
# Usage:
#   make              -> setup env and run dataset_analysis.py
#   make run           -> run dataset_analysis.py
#   make run-ml        -> run smart farming ML code
#   make clean         -> remove virtual environment and logs

# Name of the Python virtual environment
ENV_NAME = venv

# Existing script (do not change)
SCRIPT_ANALYSIS = dataset_analysis.py

# New ML script (your smart farming model code)
SCRIPT_ML = Codes/initial/main.py
SCRIPT_ML_OPT = others/main_opt.py
SCRIPT_TREE_OPT = Codes/optimized/main_tree_opt.py
SCRIPT_EDGE = Codes/system/main_edge.py
SCRIPT_MODEL = model.py
SCRIPT_GMODEL = golden_model_noscale.py
SCRIPT_TEST = Codes/test/main.py
SCRIPT_ENCODE = encode_crop_type.py

# Default target: keep old behavior
all: env run

# Create virtual environment and install all dependencies
# Create virtual environment and install dependencies
env:
	python -m venv $(ENV_NAME)
	$(ENV_NAME)/Scripts/python -m pip install --upgrade pip
	$(ENV_NAME)/Scripts/pip install streamlit pandas numpy scikit-learn xgboost matplotlib seaborn plotly Pillow kaggle tabulate skl2onnx onnxruntime catboost lightgbm


# Run the original dataset analysis (unchanged behavior)
run-data:
	$(ENV_NAME)/Scripts/python $(SCRIPT_ANALYSIS)

# Run the smart farming ML code
run:
	$(ENV_NAME)/Scripts/python $(SCRIPT_ML)
run_opt:
	$(ENV_NAME)/Scripts/python $(SCRIPT_ML_OPT)
run_tree_opt:
	$(ENV_NAME)/Scripts/python $(SCRIPT_TREE_OPT)
run_edge:
	$(ENV_NAME)/Scripts/python $(SCRIPT_EDGE)
compare_tree:
	$(ENV_NAME)/Scripts/python $(SCRIPT_ML)
	$(ENV_NAME)/Scripts/python $(SCRIPT_TREE_OPT)
# 	$(ENV_NAME)/Scripts/python $(SCRIPT_MODEL)
run_model:
	$(ENV_NAME)/Scripts/python $(SCRIPT_MODEL)
run_gmodel:
	$(ENV_NAME)/Scripts/python $(SCRIPT_GMODEL)
run_test:
	$(ENV_NAME)/Scripts/python $(SCRIPT_TEST)
run_encode:
	$(ENV_NAME)/Scripts/python $(SCRIPT_ENCODE)
# Clean virtual environment and logs
clean:
	rm -rf $(ENV_NAME)
	rm -f output.log

.PHONY: all env run run_opt run_tree_opt run_edge compare_tree run-ml clean
