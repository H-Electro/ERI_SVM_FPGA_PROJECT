# Makefile for Random Forest FPGA flow with QuestaSim
#
# Usage:
#   make env
#   make train
#   make export
#   make tbdata
#   make prep_sim
#   make run_sim
#   make flow
#   make clean

ENV_NAME = venv

DATASET = data/raw/crop-yield.csv
MODEL_ROOT = artifacts/models/rf_models
SIM_DIR = hardware/sim
SIM_GENERATED_DIR = $(SIM_DIR)/generated
WIN_SIM_DIR = hardware\sim
WIN_SIM_GENERATED_DIR = hardware\sim\generated

all: env flow

env:
	python -m venv $(ENV_NAME)
	$(ENV_NAME)/Scripts/python -m pip install --upgrade pip
	$(ENV_NAME)/Scripts/pip install numpy pandas scikit-learn matplotlib seaborn

train:
	$(ENV_NAME)/Scripts/python -m python.train_rf_per_crop

export:
	$(ENV_NAME)/Scripts/python -m python.export_rf_to_fpga --model-root $(MODEL_ROOT)

tbdata:
	$(ENV_NAME)/Scripts/python -m python.make_tb_data --dataset $(DATASET) --model-root $(MODEL_ROOT)

prep_sim:
	if exist "$(WIN_SIM_GENERATED_DIR)" rmdir /s /q "$(WIN_SIM_GENERATED_DIR)"
	if not exist "$(WIN_SIM_GENERATED_DIR)" mkdir "$(WIN_SIM_GENERATED_DIR)"
	$(ENV_NAME)/Scripts/python -m python.prepare_sim_assets --model-root $(MODEL_ROOT) --sim-generated-dir $(SIM_GENERATED_DIR)

run_sim:
	cd "$(WIN_SIM_DIR)" && vsim -c -do run.tcl

flow: train export tbdata prep_sim run_sim

show_crops:
	@echo 0 = Cotton
	@echo 1 = Rice
	@echo 2 = Maize
	@echo 3 = Potato
	@echo 4 = Sugarcane
	@echo 5 = Wheat

clean:
	if exist $(ENV_NAME) rmdir /s /q $(ENV_NAME)
	if exist "$(WIN_SIM_DIR)\work" rmdir /s /q "$(WIN_SIM_DIR)\work"
	if exist "$(WIN_SIM_DIR)\waves" rmdir /s /q "$(WIN_SIM_DIR)\waves"
	if exist "$(WIN_SIM_DIR)\reports" rmdir /s /q "$(WIN_SIM_DIR)\reports"
	if exist "$(WIN_SIM_DIR)\transcript" del /q "$(WIN_SIM_DIR)\transcript"
	if exist "$(WIN_SIM_DIR)\vsim.wlf" del /q "$(WIN_SIM_DIR)\vsim.wlf"
	if exist "$(WIN_SIM_GENERATED_DIR)" rmdir /s /q "$(WIN_SIM_GENERATED_DIR)"

.PHONY: all env train export tbdata prep_sim run_sim flow show_crops clean
