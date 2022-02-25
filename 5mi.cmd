@echo off

if not exist "Install" (
	powershell -Command Invoke-WebRequest https://github.com/the5gi/5mi-files/raw/main/Install.zip -OutFile Install.zip
	tar -xf Install.zip
	del /f Install.zip
	timeout 10
	goto prehome
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
	
	if %txt% == 1 (
		if exist "dir.txt" (del dir.txt)
		echo C:\Program Files (x86^)\Steam\steamapps\common\Gorilla Tag >> dir.txt
		goto home
	)
	
	if %txt% == 2 (
		if exist "dir.txt" (del dir.txt)
		echo C:\Program Files\Oculus\Software\Software\another-axiom-gorilla-tag >> dir.txt
		goto home
	)
	
	if %txt% == 3 (
		goto customdir
	)
	
	if %txt% == 4 (
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
	echo 4. GorillaCosmetics by Bobbie and Graic
	echo 5. DashMonke by Frogrilla
	echo 6. HauntedModMenu by A Haunted Army
	echo 7. IronMonke by BZZZ The 18th
	echo 8. MonkeMapLoader by Vadix
	echo 9. PowerArms by A Haunted Army
	echo 10. SlipperyIce by fchb1239
	echo 11. SpaceMonke by Bobbie
	echo --------------------------
	echo.
	echo          Dependencies
	echo --------------------------
	echo 12. Newtonsoft.json by Newton-King
	echo 13. BepInEx/Extenject by Auros and svermeulen
	echo 14. Utilla by Bobbie
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
		start Install\GorillaCosmetics.bat
		start Install\Utilla.bat
		start Install\Newtonsoft.Json.bat
	)
	
	if '%csmi%'=='5' (
		start Install\DashMonke.bat
		start Install\Utilla.bat
	)
	
	if '%csmi%'=='6' (
		start Install\HauntedModMenu.bat
		start Install\Utilla
	)
	
	if '%csmi%'=='7' (
		start Install\IronMonke
		start Install\Utilla.bat
	)
	
	if '%csmi%'=='8' (
		start Install\MonkeMapLoader.bat
		start Install\Bepinject.bat
		start Install\ComputerInterface.bat
		start Install\Extenject.bat
		start Install\Newtonsoft.json.bat
		start Install\Utilla.bat
	)
	
	if '%csmi%'=='9' (
		start Install\Powerarms.bat
		start Install\Utilla.bat
	)
	
	if '%csmi%'=='10' (
		start Install\SlipperyIce.bat
		start Install\Bepinject.bat
		start Install\ComputerInterface.bat
		start Install\Extenject.bat
		start Install\Utilla.bat
	)
	
	if '%csmi%'=='11' (
		start Install\SpaceMonke.bat
		start Install\Utilla
	)
	
	if '%csmi%'=='12' (
		start Install\Newtonsoft.json.bat
	)
	
	if '%csmi%'=='13' (
		start Install\Extenject.bat
		start Install\Bepinject.bat
	)
	
	if '%csmi%'=='14' (
		start Install\Utilla.bat
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
