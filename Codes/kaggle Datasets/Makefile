# Makefile for greenhouse dataset analysis
# make | make run

# Name of the Python environment
ENV_NAME = venv

# Python script to run
SCRIPT = dataset_analysis.py

# Default target: install dependencies and run
all: env run

# Create virtual environment and install dependencies
env:
	python -m venv $(ENV_NAME)
	$(ENV_NAME)/Scripts/pip install --upgrade pip
	$(ENV_NAME)/Scripts/pip install pandas kaggle tabulate

# Run the Python script
run:
	$(ENV_NAME)/Scripts/python $(SCRIPT)

# Clean virtual environment and log files
clean:
	rm -rf $(ENV_NAME)
	rm -f output.log

.PHONY: all env run clean
