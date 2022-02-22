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
echo ALL MODS YOU SELECT TO BE INSTALLED THAT ARE ALREADY PRESENT WILL BE RESET IF REINSTALLED.
echo THIS WILL ALSO NOT INSTALL BepInEx (Modding Utility) WOULD YOU LIKE TO CONTINUE? (y/N)?
echo ^^^ (Might be added soon.)
echo.
set /p yn1=" y/N? "
if not '%yn1%'== set yn1=%yn1:~0,1%
if '%yn1%'=='y' goto home
if '%yn1%'=='Y' goto home
if '%yn1%'=='n' exit
if '%yn1%'=='N' exit
pause
goto prehome

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
set /p csmi=" Mod to Install >>> "
if '%csmi%'=='1' echo yes
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
pause
goto home