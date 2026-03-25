# Makefile for cellular handover prediction project
#
# Usage:
#   make              -> setup env and run main_handover_dt.py
#   make run          -> run main_handover_dt.py
#   make clean        -> remove virtual environment and logs/output cache

# Name of the Python virtual environment
ENV_NAME = venv

# Main script
SCRIPT_MAIN = main_handover_dt.py

# Default target
all: env run

# Create virtual environment and install dependencies
env:
	python -m venv $(ENV_NAME)
	$(ENV_NAME)/Scripts/python -m pip install --upgrade pip
	$(ENV_NAME)/Scripts/pip install pandas numpy scikit-learn matplotlib

# Run the handover decision tree model
run:
	$(ENV_NAME)/Scripts/python $(SCRIPT_MAIN)

# Clean virtual environment and generated files
clean:
	rm -rf $(ENV_NAME)
	rm -rf figures
	rm -rf outputs
	rm -f output.log

.PHONY: all env run clean