@echo off
setlocal enableextensions enabledelayedexpansion
set homepath=%cd%



::                        +hmNNNmh+   
::                       yMMMMMMMMMy  
::                       mMMMh hMMMd  
::                       mMMMh:oso:.  
::                       mMMMMMMMMMs  
::                       mMMNdNNhmMd  
::                       mMMs  `-sMd  
::              Trowback mMMy smMMMd  
::             Operation mMMy mMMMMd  
::                       hMMy.NMMMMy  
::                       `ohmNMNmh+   
:: Zer0Bytes#4428 https://i.imgur.com/nBKIDOX.png
::7zip location
::dont touch homepath



goto versioncheck


::-------------------------------------------------------------- Version check
:versioncheck



if exist "ignore" (
  del /s /q "MenuV2.4.3.2.Bat"
  rd /s /q "Resources"
  rd /s /q "DepotDownloader"
  cls
  MODE 40,10
  echo ---------------------------------------
  echo       Detected an old version
  echo             Deleting....
  echo ---------------------------------------

  timeout /t 4
  cls
  goto mainmenu
) else (
  goto mainmenu
)


::-------------------------------------------------------------- 7zip start
:move1
move 7za.exe Resources
goto 7zipcheck

:7zipcheck
MODE 62,50
if exist "Resources\7za.exe" (
  goto mainmenuload2
) else (
  mkdir Resources
  goto no7zip
)

:no7zip
MODE 78,20
echo ------------------------------------------------------------------------------
echo                              Downloading 7-Zip...
echo ------------------------------------------------------------------------------
curl -L  "https://github.com/DataCluster0/none/raw/master/7za.exe" --output 7za.exe
pause
cls
goto move1

cls
)

::-------------------------------------------------------------- MainMenu
:mainmenu
goto 7zipcheck
:mainmenuload2
MODE 62,20
Title Rainbow six siege Manifest Tool
echo ----------------------------NOTES---------------------------
echo # Mad House is still currently disabled due to bad manifest's
echo # Installing 7-zip no longer needed
echo # Blood Orchid Manifest updated for liberator (hopefully)
echo # smaller windows
echo ----------------------------INFO----------------------------
echo  Discord : discord.gg/26qrqed
echo  Version : 2.5
echo ---------------------------SELECT---------------------------
echo  1 = DepotDownloader
echo  2 = is Battleye Running?
echo  3 = Change Username (codex)
echo  4 = Hack The Pentagon
echo ------------------------------------------------------------
::-------------------------------------------------------------- Select screen
set /p mainmenu2="Enter Number : "


:: depotloader 1
if %mainmenu2%==1 (
  goto menudepot
  cls
)

::------------------------------------------------depot downloader checker download

::------------------------------------------------you know what it is
:: 2
if %mainmenu2%==3 (
  goto codex
  cls
)



::------------------------------------------------you know what it is
if %mainmenu2%==4 (
  start www.youtube.com/watch?v=dQw4w9WgXcQ
  cls
  exit
)

::-------------------------------------------------------------- Is Battleye running?
if %mainmenu2%==2 (
title is battleye running?
cls
SETLOCAL EnableExtensions
set EXE=RainbowSix_BE.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FOUND
echo ------------------------------------
echo [-] BattleEye is Not running
echo ------------------------------------
goto FIN
:FOUND
echo ------------------------------------
echo [+] BattleEye is running
echo ------------------------------------
:FIN
pause
goto mainmenu
)




::-------------------------------------------------------------- Codex name system codex

:extract2
curl -L  "" --output crack.7z
for %%I in ("crack.7z") do (
  echo 2
  "Resources\7za.exe" x -y -o"%homepath%\Resources\crack" "%%I" && del %%I
)

:codex
cls
Title CODEX Name Changer 
cls
echo --------------INFO---------------------------
echo This will change the name if the r6 versions
echo       are in the R6Downloads
echo -------------SELECT--------------------------
echo  1 = DepotDownloader
echo ---------------------------------------
set /p version2= Version :
set /p name=Write username : 
set tempfile=%random%-%random%.tmp

copy /y nul %tempfile%

set line=0
for /f "delims=" %%l in (%inputfile%) do (
    set /a line+=1
    if !line!==28 (
        echo UserName=%name%>>%tempfile%
    ) else (
        echo %%l>>%tempfile%
    )
)

del %inputfile%
ren %tempfile% %inputfile%

endlocal

::-------------------------------------------------------------- alpha message alphainstalled
:alphainstalled
echo ---------------------------------------
echo Closed Alpha is aready installed
echo if this an error delete the R6Download Folder
echo ---------------------------------------
pause
cls
goto menudepot
::-------------------------------------------------------------- Alpha downloader

:alphadownloader1
cls
curl -L  "https://drive.google.com/uc?id=1MhRysZxLLlvc5_KTWj_j8-ESkAD9j7C-&export=download" --output AlphaPatch.7z


echo ---------------------------------------
echo download closedalpha_r6.7z in the home directory of the bat
echo ---------------------------------------
pause

echo extracting closedalpha.7z....
for %%I in ("AlphaPatch.7z") do (
  "Resources\7za.exe" x -y -o"%homepath%\R6Downloads\ClosedAlpha\" "%%I" && del %%I
 pause


echo extracting closedalpha.7z....
for %%I in ("closedalpha_r6.7z") do (
  "Resources\7za.exe" x -y -o"%homepath%\R6Downloads\ClosedAlpha\" "%%I" && del %%I
  pause
)

::-------------------------------------------------------------- Downloader menu menudepot / verifieddotnet / verify_dotnet

::return back to start
:menudepot
goto verifydotnet
:verifieddotnet
goto DepotCheck
:laststepdepot
Title Rainbow Six Siege Version Downloader
MODE 46,20
echo ----------------------------------------------
echo # 1 - Main Menu
echo # info - installed versions
echo # closedfaq - Closed beta FAQ
echo ----------------------------------------------
echo # ca = Closed Alpha 0.1
echo # 2 = Vanilla 1.0 
echo # 3 = Skull Rain 4.2
echo # 4 = Blood Orchid 2.3.1.1
echo # 5 = Chimera 3.1.0 (outbreak)
::echo # 6 = Grim Sky 3.3.0 (Mad House)
echo # 7 = Burnt Horizon 4.1.0 (Rainbow is Magic)
echo # 8 = Phantom Sight 4.2.0 (Showdown)
echo # 9 = Shifting Tides 4.4.0 (Stadium)
echo ----------------------------------------------
set /p version="Enter Number:"

:verifydotnet
if exist "C:\Program Files\dotnet\dotnet.exe" (
  goto verifieddotnet
) else (
  goto downloaddotnet 
)

:DepotCheck
cls
if exist "Resources\DepotDownloader\DepotDownloader.dll" (
  ::return back to start
  goto laststepdepot 
) else (
  ::download depot downloader
  goto downloadcontinue
)

::download depot downloader
:downloadcontinue
cls
MODE 78,20
echo ------------------------------------------------------------------------------
echo                        Downloading DepotDownloader...
echo ------------------------------------------------------------------------------
curl -L  "https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_2.3.5/depotdownloader-2.3.5.zip" --output depot.zip
cls
goto extractDepotDownloader

::extracting depot
:extractDepotDownloader
for %%I in ("depot.zip") do (
  echo 2
  "Resources\7za.exe" x -y -o"Resources\DepotDownloader" "%%I" && del %%I
cls
goto DepotCheck
)

::--------------------------------------------------------------install dot net pup up download_dotnet 
:downloaddotnet 
MODE 40,10
echo ---------------------------------------
echo       Install .NET Runtime !!
echo ---------------------------------------
start www.tinyurl.com/dotnetr6
pause
echo      Press Space after install
echo ---------------------------------------
goto verifydotnet
:: anchor -------------------------------------------------------------- Downloader select
::rename codex
// anchor


::back to main menu
if %version%==1 ( 
  goto mainmenu
  cls
)

if %version%==info ( 
  goto versioninfo
  cls
)

if %version%==ca ( 
  
  cls
  goto alphadownloader1 
)
::-------------------------------------------------------------- Closed Alpha Faq
if %version%==closedfaq ( 
cls
MODE 64,20
echo  ---------------------------FAQ--------------------------------
echo   Q : I can't see my friends custom game?
echo   A : Whitelist the Alpha in the firewall
echo  --------------------------------------------------------------
echo   Q : Why do i need to launch the Alphapatch?
echo   A : If you launch it in the Nat screen 
echo   it should change your name into a mess
echo   if not executed the game will use the windows username
echo  
echo   ps wait for cheato to add name changer support to liberator
echo  --------------------------------------------------------------
pause
cls
goto menudepot
)
::-------------------------------------------------------------- end


::steamusername
set /p username="Enter Steam Username:"

::-------------------------------------------------------------- DepotDownloader data
set message= (
  echo ---------------------------------------
  echo          Download Complete
  echo ---------------------------------------
)



::vanilla 1.0
if %version%==2 ( 
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "R6Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "R6Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menudepot
)

::Skull Rain 4.2
if %version%==3 ( 
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% -remember-password -dir "R6Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% -remember-password -dir "R6Downloads\Y1S3_SkullRain" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menudepot
)

::Blood Orchid 2.3.1.1 (idk if this the the real manifest)
if %version%==4 (
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 2066250193950057921 -username %username% -remember-password -dir "R6Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 2783803489764777627 -username %username% -remember-password -dir "R6Downloads\Y2S3_BloodOrchid" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menudepot
)

::chimera 3.1.0 
if %version%==5 (
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% -remember-password -dir "R6Downloads\Y3S1_Chimera_Outbreak" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% -remember-password -dir "R6Downloads\Y3S1_Chimera_Outbreak" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menudepot
)

::Grim Sky 3.3.0
::if %version%==6 (
::dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3546781236735558235 -username %username% -remember-password -dir "R6Downloads\Y3S3_GrimSky_MadHouse" -validate -max-servers 15 -max-downloads 10
::dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1556527176552332195 -username %username% -remember-password -dir "R6Downloads\Y3S3_GrimSky_MadHouse" -validate -max-servers 15 -max-downloads 10
::pause
::cls
::goto menudepot
::)

::Burnt Horizon 4.1.0
if %version%==7 (
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% -remember-password -dir "R6Downloads\Y4S1_BurntHorizon_RainbowisMagic" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% -remember-password -dir "R6Downloads\Y4S1_BurntHorizon_RainbowisMagic" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menudepot
)

::Phantom Sight 4.2.0
if %version%==8 (
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "R6Downloads\Y4S2_Showdown" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5408324128694463720 -username %username% -remember-password -dir "R6Downloads\Y4S2_Showdown" -validate -max-servers 15 -max-downloads 10
echo 
pause
cls
goto menudepot
)

::Shifting Tides 4.4.0
if %version%==9 (
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 299124516841461614 -username %username% -remember-password -dir "R6Downloads\Y4S4_Stadium" -validate -max-servers 15 -max-downloads 10
dotnet Resources\DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1842268638395240106 -username %username% -remember-password -dir "R6Downloads\Y4S4_Stadium" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menudepot
)




