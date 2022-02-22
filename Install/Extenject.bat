@echo off
title Installing Extenject
set /p dir=< dir.txt
echo The Target dir is: %dir%
if not exist "%dir%\BepInEx\plugins\Extenject" (
cd %dir%
md BepInEx\plugins\Extenject
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Extenject/Zenject.dll -OutFile BepInEx\plugins\Extenject\Zenject.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Extenject/Zenject-usage.dll -OutFile BepInEx\plugins\Extenject\Zenject-usage.dll
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