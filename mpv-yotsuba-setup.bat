@echo off

:: 取得當前目錄
set "CUR_DIR=%CD%"

:: 加入跳脫字元
set "CUR_DIR=%CUR_DIR:\=\\%"

:: 準備最終要寫入的路徑
set "MPV_PATH=%CUR_DIR%\\mpv.exe"

:: 寫入設定檔
echo mpv = "%MPV_PATH%" > "mpv-handler\config.toml"

:: 執行 mpv-handler/handler-install.bat
call "mpv-handler\handler-install.bat"
