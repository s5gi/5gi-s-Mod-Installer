@echo off
title Installing Utilla
set /p dir=< dir.txt
echo The Target dir is: %dir%
if not exist "%dir%\BepInEx\plugins\Utilla" (
cd %dir%
md BepInEx\plugins\Utilla
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Utilla/Utilla.dll -OutFile BepInEx\plugins\Utilla\Utilla.dll
title Installed Successfully!
echo Installed! Closing...
timeout 3
exit
) else (
echo The Mod Is already installed.
exit
)
timeout 3
exit