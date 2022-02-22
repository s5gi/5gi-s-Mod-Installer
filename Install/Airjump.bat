@echo off
title installing AirJump...
set /p dir=< dir.txt
echo The Target dir is: %dir%
if not exist "%dir%\Airjump" (
md %dir%\AirJump
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/AirJump/AirJump.dll -OutFile %dir%\AirJump\AirJump.dll
cls
title Installed Successfully!
echo Installed! Closing...
) else (
echo The Mod Is already installed.
)
timeout 3
exit