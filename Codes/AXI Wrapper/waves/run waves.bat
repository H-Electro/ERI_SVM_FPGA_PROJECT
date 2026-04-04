@echo off
cd /d "%~dp0\.."
start "" "C:\Program Files\gtkwave\bin\gtkwave.exe" "waves\waves.vcd" "waves\GTK_settings.gtkw"