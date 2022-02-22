@echo off
title Installing Computer Interface
set /p dir=< dir.txt
echo The Target dir is: %dir%
if not exist "%dir%\BepInEx\plugins\ComputerInterface" (
cd %dir%
md BepInEx\plugins\ComputerInterface
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/ComputerInterface.RoomBrowser.dll -OutFile BepInEx\plugins\ComputerInterface\ComputerInterface.RoomBrowser.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/ComputerInterface.Commands.dll -OutFile BepInEx\plugins\ComputerInterface\ComputerInterface.Commands.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/ComputerInterface.dll -OutFile BepInEx\plugins\ComputerInterface\ComputerInterface.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/Unity.TextMeshPro.dll -OutFile BepInEx\plugins\ComputerInterface\Unity.TextMeshPro.dll
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/files/ComputerInterface/background.png -OutFile BepInEx\plugins\ComputerInterface\background.png
title Installed Successfully!
echo Installed! Closing...
start Install\Bepinject.bat
start Install\Extenject.bat
timeout 3
exit
) else (
echo The Mod Is already installed.
exit
)
timeout 3
exit