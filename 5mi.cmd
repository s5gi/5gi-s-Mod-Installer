@echo off
cls
title 5gi's Mod Installer
goto prehome

:prehome
cls
title 5gi's Mod Installer / Are you sure?
echo.
echo ///////	    //        //	///////
echo /      	    / /      / /	   /
echo ///////	    /  /    /  /	   /
echo       /	    /   /  /   /	   /
echo ///////	    /    //    /	///////  (5gi's Mod Installer)
echo.
echo --------------------------
echo 1. Steam
echo 2. Oculus Rift S Software
echo 3. Custom Dir
echo 4. Leave the Same. (Continue with previous stated dir)
echo --------------------------
echo.
set /p txt=" What is the directory of Gorilla Tag? >>> "
if '%txt%'=='1' (
goto home
)
if '%txt%'=='2' (
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
echo 1. Airjump
echo 2. Broken Controller
echo 3. Computer Interface
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
echo 17. Bannana Hook
echo 18. BepInject
echo 19. Extenject
echo 20. TMPLoader
echo 21. Utilla
echo.
set /p csmi=" Mod to Install >>> "
if '%csmi%'=='1' start Install\AirJump.bat
if '%csmi%'=='2' echo yes
if '%csmi%'=='3' echo yes
if '%csmi%'=='4' echo yes
if '%csmi%'=='5' echo yes
if '%csmi%'=='6' echo yes
if '%csmi%'=='7' echo yes
if '%csmi%'=='8' echo yes
if '%csmi%'=='9' echo yes
if '%csmi%'=='10' echo yes
if '%csmi%'=='11' echo yes
if '%csmi%'=='12' echo yes
if '%csmi%'=='13' echo yes
if '%csmi%'=='14' echo yes
if '%csmi%'=='15' echo yes
if '%csmi%'=='16' echo yes
if '%csmi%'=='17' echo yes
if '%csmi%'=='18' echo yes
if '%csmi%'=='19' echo yes
if '%csmi%'=='20' echo yes
if '%csmi%'=='21' echo yes
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

