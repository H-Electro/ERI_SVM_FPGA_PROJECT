@echo off
setlocal

set PROJECT_ROOT=%~dp0
cd /d "%PROJECT_ROOT%"

set ENV_NAME=venv
set PYTHON=%PROJECT_ROOT%%ENV_NAME%\Scripts\python.exe
set PIP=%PROJECT_ROOT%%ENV_NAME%\Scripts\pip.exe
set MODEL_ROOT=artifacts\models\rf_models
set DATASET=data\raw\crop-yield.csv
set SIM_DIR=hardware\sim
set SIM_GENERATED_DIR=%SIM_DIR%\generated

echo [INFO] Running full multi-crop flow.

if not exist "%PYTHON%" (
    python -m venv "%ENV_NAME%" || goto :fail
    "%PYTHON%" -m pip install --upgrade pip || goto :fail
    "%PIP%" install numpy pandas scikit-learn matplotlib seaborn || goto :fail
)

"%PYTHON%" -m python.train_rf_per_crop || goto :fail
"%PYTHON%" -m python.export_rf_to_fpga --model-root "%MODEL_ROOT%" || goto :fail
"%PYTHON%" -m python.make_tb_data --dataset "%DATASET%" --model-root "%MODEL_ROOT%" || goto :fail

if exist "%PROJECT_ROOT%%SIM_GENERATED_DIR%" rmdir /s /q "%PROJECT_ROOT%%SIM_GENERATED_DIR%"
mkdir "%PROJECT_ROOT%%SIM_GENERATED_DIR%" || goto :fail
"%PYTHON%" -m python.prepare_sim_assets --model-root "%MODEL_ROOT%" --sim-generated-dir "%SIM_GENERATED_DIR%" || goto :fail

cd /d "%PROJECT_ROOT%%SIM_DIR%"
vsim -do run.tcl || goto :fail

cd /d "%PROJECT_ROOT%"
echo Flow completed successfully for all crops.
goto :eof

:fail
cd /d "%PROJECT_ROOT%"
echo Flow failed.
exit /b 1
