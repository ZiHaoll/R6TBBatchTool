@echo off
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
::                       hMMy.NMMMMy  discord.gg/kDsDQFD
::                       `ohmNMNmh+   
:: Zer0Bytes#4428 https://i.imgur.com/nBKIDOX.png






::downloader
:mainmenu
Title Rainbow Six Siege Batch Tool 
cls
echo ---------------------------------------
echo 1 DepotDownloader
echo 2 is Battleye Running?
echo 3 Hack The Pentagon
echo ---------------------------------------
echo Discord : discord.gg/kDsDQFD
echo Version : 2.4.3
echo ---------------------------------------
echo x 1.0 Mad House is currently disabled due to bad manifest's
echo x Skull rain should be fixed really this time
echo next update will have closed beta support
echo ---------------------------------------

set /p mainmenu2="Enter Number : "

:: main menu load 
if %mainmenu2%==1 (
goto download
cls
exit
)

if %mainmenu2%==2 (
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
)

:verify_dotnet
if exist "C:\Program Files\dotnet\dotnet.exe" (
  goto verifieddotnet
) else (
  goto download_dotnet 
)

if %mainmenu2%==3 (
start www.youtube.com/watch?v=dQw4w9WgXcQ
cls
exit
)


:: 2
if exist "C:\Program Files\7-Zip\7z.exe" goto download
cls

:: 1
if not exist "C:\Program Files\7-Zip\7z.exe" goto no7zip

:: 1
:no7zip
echo ---------------------------------------
echo Install 7Zip !!
echo ---------------------------------------
pause
start www.7-zip.org
exit



:: 2
:download
if exist "DepotDownloader\DepotDownloader.dll" goto menu
if not exist "DepotDownloader\DepotDownloader.dll" goto downloadcontinue


::download_dotnet placeholder
:download_dotnet 
echo ---------------------------------------
echo Install .NET Runtime !!
echo ---------------------------------------
start www.tinyurl.com/dotnetr6
pause
echo Press Space after install
echo ---------------------------------------

:: if exist "C:\Program Files\dotnet" goto menu


:downloadcontinue
echo ---------------------------------------
echo Downloading DepotDownloader...
echo ---------------------------------------
curl -L "https://github.com/SteamRE/DepotDownloader/releases/download/DepotDownloader_2.3.5/depotdownloader-2.3.5.zip" --output depot.zip
cls
set homepath=%cd%

:extract
for %%I in ("depot.zip") do (
  "C:\Program Files\7-Zip\7z.exe" x -y -o"%homepath%\DepotDownloader" "%%I" && del %%I
)
cls
goto menu

::downloader end


Title Rainbow Six Siege Version Downloader
:menu
goto verify_dotnet
:verifieddotnet
echo ---------------------------------------
echo # 1 - Main Menu
echo # Help - Getting Errors? Type "Help"
echo ---------------------------------------
echo # 2 = Vanilla 1.0
echo # 3 = Skull Rain 4.2
echo # 4 = Blood Orchid 2.3.1
echo # 5 = Chimera 3.1.0 (outbreak)
::echo # 6 = Grim Sky 3.3.0 (Mad House)
echo # 7 = Burnt Horizon 4.1.0 (Rainbow is Magic)
echo # 8 = Phantom Sight 4.2.0 (Showdown)
echo # 9 = Shifting Tides 4.4.0 (Stadium)
echo ---------------------------------------
set /p version="Enter Number:"


if %version%==help ( 

echo ---------------------------------------
echo Install .NET Runtime
echo ---------------------------------------
start www.tinyurl.com/r6rederrorfix
echo Press Space after install
pause
echo ---------------------------------------
cls
goto menu

)



if %version%==6 ( 
echo Nice Try its disabled
pause
cls
goto menu
)

:: credits end
set /p username="Enter Steam Username:"
::mainmenu

if %version%==1 ( 
goto mainmenu
cls
)

vanilla 1.0
if %version%==2 ( 
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Skull Rain 4.2
if %version%==3 ( 
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% -remember-password -dir "R6Downloads\Skull Rain" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% -remember-password -dir "R6Downloads\Skull Rain" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Blood Orchid 2.3.1 (idk if this the the real manifest)
if %version%==4 (
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 6309847129820490464 -username %username% -remember-password -dir "R6Downloads\Y2S3" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1613631671988840841 -username %username% -remember-password -dir "R6Downloads\Y2S3" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::chimera 3.1.0 
if %version%==5 (
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% -remember-password -dir "R6Downloads\Y3S1_Outbreak" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% -remember-password -dir "R6Downloads\Y3S1_Outbreak" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Grim Sky 3.3.0
::if %version%==6 (
::dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 3546781236735558235 -username %username% -remember-password -dir "R6Downloads\Y3S3_MadHouse" -validate -max-servers 15 -max-downloads 10
::dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1556527176552332195 -username %username% -remember-password -dir "R6Downloads\Y3S3_MadHouse" -validate -max-servers 15 -max-downloads 10
::pause
::cls
::goto menu
::)

::Burnt Horizon 4.1.0
if %version%==7 (
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% -remember-password -dir "R6Downloads\Y4S2" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% -remember-password -dir "R6Downloads\Y4S2" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Phantom Sight 4.2.0
if %version%==8 (
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "R6Downloads\Y4S4_Showdown" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1739364586766771991 -username %username% -remember-password -dir "R6Downloads\Y4S4_Showdown" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Shifting Tides 4.4.0
if %version%==9 (
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 299124516841461614 -username %username% -remember-password -dir "R6Downloads\Y4S4_Stadium" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 1842268638395240106 -username %username% -remember-password -dir "R6Downloads\Y4S4_Stadium" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)








