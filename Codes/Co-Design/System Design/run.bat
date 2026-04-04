@echo off
setlocal

set "SCRIPT_DIR=%~dp0"
set "VIVADO_BAT=C:\Xilinx\Vivado\2022.2\bin\vivado.bat"
set "TCL_FILE=%SCRIPT_DIR%run.tcl"

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

call "%VIVADO_BAT%" -mode gui -source "%TCL_FILE%"

endlocal
