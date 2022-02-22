@echo off
title Installing BepInEx...
set /p dir=< dir.txt
echo The Target dir is: %dir%
if not exist "%dir%\BepInEx" (
cd %dir%
md temp
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/BepInEx_x64_5.4.19.0.zip -OutFile temp\BepInEx_x64_5.4.19.0.zip
tar -xf temp\BepInEx_x64_5.4.19.0.zip
copy temp\BepInEx\core
copy temp\BepInEx\plugins
exit
) else (
echo.
echo BepInEx is already Installed.
echo.
timeout 5
exit
)
)