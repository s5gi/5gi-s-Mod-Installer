@echo off
title installing AirJump...
set /p dir=< dir.txt
echo The Target dir is: %dir%
if not exist "%dir%\BepInEx\plugins\Airjump" (
cd %dir%
md BepInEx\plugins\AirJump
md BepInEx\plugins\Bepinject
md BepInEx\plugins\ComputerInterface
md BepInEx\plugins\Extenject
md BepInEx\plugins\Utilla
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/AirJump/AirJump.dll -OutFile BepInEx\plugins\AirJump\AirJump.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Bepinject-Auros/Bepinject.dll -OutFile BepInEx\plugins\Bepinject\Bepinject.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/ComputerInterface.RoomBrowser.dll -OutFile BepInEx\plugins\ComputerInterface\ComputerInterface.RoomBrowser.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/ComputerInterface.Commands.dll -OutFile BepInEx\plugins\ComputerInterface\ComputerInterface.Commands.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/ComputerInterface.dll -OutFile BepInEx\plugins\ComputerInterface\ComputerInterface.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/Unity.TextMeshPro.dll -OutFile BepInEx\plugins\ComputerInterface\Unity.TextMeshPro.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/background.png -OutFile BepInEx\plugins\ComputerInterface\background.png
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Extenject/Zenject.dll -OutFile BepInEx\plugins\Extenject\Zenject.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Extenject/Zenject-usage.dll -OutFile BepInEx\plugins\Extenject\Zenject-usage.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/Utilla/Utilla.dll -OutFile BepInEx\plugins\Utilla\Utilla.dll
pause
title Installed Successfully!
echo Installed! Closing...
) else (
echo The Mod Is already installed.
)
pause
timeout 3
exit