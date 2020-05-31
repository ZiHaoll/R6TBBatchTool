@echo off





::                        +hmNNNmh+   
::                       yMMMMMMMMMy  
::                       mMMMh hMMMd  
::                       mMMMh:oso:.  
::                       mMMMMMMMMMs  
::                       mMMNdNNhmMd  
::                       mMMs  `-sMd  
::              Trowback mMMy smMMMd  
::             Operation mMMy mMMMMd  
::                       hMMy.NMMMMy  discord.gg/26qrqed
::                       `ohmNMNmh+   
:: Zer0Bytes#4428 https://i.imgur.com/nBKIDOX.png




set homepath=%cd%
mkdir Resources

::downloader
:mainmenu
Title Rainbow Six Siege Batch Tool 
cls


echo --------------NOTES--------------------
echo # Mad House is currently disabled due to bad manifest's
echo # skull rain updated for liberator
echo # 1.0 is back
echo # next big update will have closed beta support
echo --------------INFO---------------------
echo  Discord : discord.gg/26qrqed
echo  Version : 2.4.3.2 hotfix
echo -------------SELECT--------------------
echo  1 = DepotDownloader
echo  2 = is Battleye Running?
echo  3 = Hack The Pentagon
echo ---------------------------------------

set /p mainmenu2="Enter Number : "

:: main menu load 
if %mainmenu2%==1 (
cls
goto download
)

if %mainmenu2%==2 (
SETLOCAL EnableExtensions
set EXE=RainbowSix_BE.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% goto FOUND
echo ------------------------------------
echo # [-] BattleEye is Not running
echo ------------------------------------
goto FIN
:FOUND
echo ------------------------------------
echo # [+] BattleEye is running
echo ------------------------------------
:FIN
pause
)



::dotnet check
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

:check7zip
if exist ""%homepath%\Resources\7za.exe"" (
  goto menu
) else (
  goto no7zip 
)





:no7zip
curl -L "https://drive.google.com/uc?id=1MYwTCZllFKig-Y1GA-gHQuzYOzJLUR1V&export=download" --output 7zip.exe
move 7Zip.exe Resources


:: 2
:download
if exist "DepotDownloader\DepotDownloader.dll" (
  goto menu
) else (
  goto downloadcontinue
)


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
  ""%homepath%\Resources\7za.exe"" x -y -o"%homepath%\DepotDownloader" "%%I" && del %%I
)
cls
goto menu

::downloader end


Title Rainbow Six Siege Version Downloader
cls
:menu
goto 
goto verify_dotnet
:verifieddotnet
echo ---------------------------------------
echo # 1 - Main Menu
echo ---------------------------------------
echo # 2 = Vanilla 1.0
echo # 3 = Skull Rain 3.2
echo # 4 = Blood Orchid 2.3.1
echo # 5 = Chimera 3.1.0 (outbreak)
::echo # 6 = Grim Sky 3.3.0 (Mad House)
echo # 7 = Burnt Horizon 4.1.0 (Rainbow is Magic)
echo # 8 = Phantom Sight 4.2.0 (Showdown)
echo # 9 = Shifting Tides 4.4.0 (Stadium)
echo ---------------------------------------
set /p version="Enter Number:"


if %version%==1 ( 
cls
goto mainmenu
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

::vanilla 1.0
if %version%==2 ( 
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Skull Rain 3.2
if %version%==3 ( 
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 5819137024728546741 -username %username% -remember-password -dir "R6Downloads\SkullRain" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5851804596427790505 -username %username% -remember-password -dir "R6Downloads\SkullRain" -validate -max-servers 15 -max-downloads 10
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
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "R6Downloads\Y4S2_Showdown" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader\DepotDownloader.dll -app 359550 -depot 359551 -manifest 5408324128694463720 -username %username% -remember-password -dir "R6Downloads\Y4S2_Showdown" -validate -max-servers 15 -max-downloads 10
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








