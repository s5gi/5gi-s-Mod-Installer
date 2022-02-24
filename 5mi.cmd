@echo off
if not exist "Install" (
powershell -Command Invoke-WebRequest https://github.com/the5gi/5mi-files/raw/main/Install.zip -OutFile Install.zip
tar -xf Install.zip
del /f Install.zip
timeout 10
)
cls
title 5gi's Mod Installer
goto prehome

:prehome
cls
title 5gi's Mod Installer / Confirm Directory
echo.
echo ///////	    //        //	///////
echo /      	    / /      / /	   /
echo ///////	    /  /    /  /	   /
echo       /	    /   /  /   /	   /
echo ///////	    /    //    /	///////  (5gi's Mod Installer)
echo.
echo --------------------------
echo 1. Steam (Issue with this will be fixed soon. for now please enter it in manually...)
echo 2. Oculus Rift S Software
echo 3. Custom Dir
echo 4. Leave the Same. (Continue with previous stated dir)
echo --------------------------
echo.
set /p txt=" What is the directory of Gorilla Tag? >>> "
set steamdir="C:\Program Files (x86)\Steam\steamapps\common\Gorilla Tag"
set oculusdir=C:\Program Files\Oculus\Software\Software\another-axiom-gorilla-tag
if '%txt%'=='1' (
echo This is currently broken! Sorry!
timeout 3
goto prehome
)
if '%txt%'=='2' (
if exist "dir.txt" (del dir.txt)
echo %oculusdir% > "dir.txt"
goto home
)
if '%txt%'=='3' (
goto customdir
)
if '%txt%'=='4' (
goto home
)




:home
title 5gi's Mod Installer / Home
cls
echo.
echo ///////	    //        //	///////
echo /      	    / /      / /	   /
echo ///////	    /  /    /  /	   /
echo       /	    /   /  /   /	   /
echo ///////	    /    //    /	///////  (5gi's Mod Installer)
echo.
echo Mod Library
echo.
echo 	 Mod Agent (Required)
echo --------------------------
echo 1. BepInEx (Working)
echo --------------------------
echo.
echo.   		Mods
echo --------------------------
echo 2. AirJump by fchb1239 (Platforms)
echo 3. ComputerInterface by ToniMacoroni
echo.
echo          Dependencies
echo --------------------------
echo 4. BepInEx/Extenject by Auros and svermeulen
echo --------------------------
echo.
set /p csmi=" Mod to Install >>> "
if '%csmi%'=='1' (
start Install\BepInEx.bat
)
if '%csmi%'=='2' (
start Install\Airjump.bat
start Install\ComputerInterface.bat
start Install\Extenject.bat
start Install\Bepinject.bat
start Install\Utilla.bat
)
if '%csmi%'=='3' (
start Install\ComputerInterface.bat
start Install\Extenject.bat
start Install\Bepinject.bat
)
if '%csmi%'=='4' (
start Install\Extenject.bat
start Install\Bepinject.bat
)

goto home



:customdir
cls
title 5gi's Mod Installer / Custom Directory Setup
echo.
echo ///////	    //        //	///////
echo /      	    / /      / /	   /
echo ///////	    /  /    /  /	   /
echo       /	    /   /  /   /	   /
echo ///////	    /    //    /	///////  (5gi's Mod Installer)
echo.
echo THIS IS CASE SENSITIVE. Ex: D:\Downloads\Gorilla Tag
echo.
set /p txt2=" What is the directory of your Gorilla Tag? >>> "
if exist "dir.txt" (del dir.txt)
echo %txt2% > "dir.txt"
cls
echo.
echo ///////	    //        //	///////
echo /      	    / /      / /	   /
echo ///////	    /  /    /  /	   /
echo       /	    /   /  /   /	   /
echo ///////	    /    //    /	///////  (5gi's Mod Installer)
echo.
echo Click any button to return to home.
echo.
pause> nul
goto home

