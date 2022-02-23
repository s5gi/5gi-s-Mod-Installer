@echo off
if not exist "Install" (
powershell -Command Invoke-WebRequest https://github.com/the5gi/5gi-s-Mod-Installer/raw/fetch/Install.zip -OutFile Install.zip
tar -xf Install.zip
echo please delete the zip folder!
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
echo.
echo Please Choose a mod to install. (Will automatically install dependencies if there are any)
echo.
echo 1. Airjump (Working)
echo 2. Broken Controller
echo 3. Computer Interface (Working)
echo 4. Cosmetic Hider
echo 5. Dash Monke
echo 6. Gorilla Cosmetics
echo 7. Monke Map Loader
echo 8. Monke Swim
echo 9. Monkey Trails
echo 10. No Ambient
echo 11. Power Arms
echo 12. Practice Mod
echo 13. Slippery Ice
echo 14. Space Monke
echo 15. Spectator Mod
echo 16. YURFitGorillaTag
echo --------------------------
echo          DEPENDENCIES
echo --------------------------
echo 17. BepInEx (REQUIRED FOR MODS PLEASE INSTALL THIS FIRST) (Working)
echo 18. Bannana Hook
echo 19. BepInject (Working)
echo 20. Extenject (Working)
echo 21. TMPLoader
echo 22. Utilla (Working)
echo.
set /p csmi=" Mod to Install >>> "
if '%csmi%'=='1' start Install\AirJump.bat
if '%csmi%'=='2' echo Sorry! This Doesnt work yet!
if '%csmi%'=='3' start Install\ComputerInterface.bat
if '%csmi%'=='4' echo Sorry! This Doesnt work yet!
if '%csmi%'=='5' echo Sorry! This Doesnt work yet!
if '%csmi%'=='6' echo Sorry! This Doesnt work yet!
if '%csmi%'=='7' echo Sorry! This Doesnt work yet!
if '%csmi%'=='8' echo Sorry! This Doesnt work yet!
if '%csmi%'=='9' echo Sorry! This Doesnt work yet!
if '%csmi%'=='10' echo Sorry! This Doesnt work yet!
if '%csmi%'=='11' echo Sorry! This Doesnt work yet!
if '%csmi%'=='12' echo Sorry! This Doesnt work yet!
if '%csmi%'=='13' echo Sorry! This Doesnt work yet!
if '%csmi%'=='14' echo Sorry! This Doesnt work yet!
if '%csmi%'=='15' echo Sorry! This Doesnt work yet!
if '%csmi%'=='16' echo Sorry! This Doesnt work yet!
if '%csmi%'=='17' start Install\BepInEx.bat
if '%csmi%'=='18' echo Sorry! This Doesnt work yet!
if '%csmi%'=='19' start Install\Bepinject.bat
if '%csmi%'=='20' start Install\Extenject.bat
if '%csmi%'=='21' echo Sorry! This Doesnt work yet!
if '%csmi%'=='22' start Install\Utilla.bat
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
set /p txt2="What is the directory of your Gorilla Tag?"
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

