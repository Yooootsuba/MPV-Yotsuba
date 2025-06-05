@echo off

:: Change to the directory where the batch is
cd /d "%~dp0"

:: Get current directory
set "CUR_DIR=%CD%"

:: Add escape characters
set "CUR_DIR=%CUR_DIR:\=\\%"

:: Prepare mpv path
set "MPV_PATH=%CUR_DIR%\\mpv.exe"

:: Write config file
echo mpv = "%MPV_PATH%" > "mpv-handler\config.toml"

:: Run handler install script
call "mpv-handler\handler-install.bat"