@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "VIVADO_BAT=D:\AMD\Vivado\2022.2\bin\vivado.bat"
set "TCL_FILE=%SCRIPT_DIR%run.tcl"
set "VIVADO_WORK_DIR=%SCRIPT_DIR%.vivado_runtime"
set "VIVADO_LOG=%VIVADO_WORK_DIR%\vivado.log"
set "VIVADO_JOU=%VIVADO_WORK_DIR%\vivado.jou"

if not exist "%VIVADO_BAT%" (
    echo Vivado launcher not found:
    echo   %VIVADO_BAT%
    exit /b 1
)

if not exist "%TCL_FILE%" (
    echo TCL script not found:
    echo   %TCL_FILE%
    exit /b 1
)

if not exist "%VIVADO_WORK_DIR%" (
    mkdir "%VIVADO_WORK_DIR%"
)

pushd "%VIVADO_WORK_DIR%" || exit /b 1
call "%VIVADO_BAT%" -mode gui -journal "%VIVADO_JOU%" -log "%VIVADO_LOG%" -source "%TCL_FILE%"
set "EXIT_CODE=%ERRORLEVEL%"
popd

endlocal & exit /b %EXIT_CODE%
