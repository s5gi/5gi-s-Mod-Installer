@echo off
title Installing Bepinject
set /p dir=< dir.txt
echo The Target dir is: %dir%
if not exist "%dir%\BepInEx\plugins\Bepinject" (
cd %dir%
md BepInEx\plugins\Bepinject
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Bepinject-Auros/Bepinject.dll -OutFile BepInEx\plugins\Bepinject\Bepinject.dll
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