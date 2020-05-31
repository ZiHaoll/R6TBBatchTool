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
::                       hMMy.NMMMMy  discord.gg/26qrqed
::                       `ohmNMNmh+   
:: Zer0Bytes#4428 https://i.imgur.com/nBKIDOX.png




Title Rainbow Six Siege Version Downloader
:menu
echo ---------------------------------------
echo 1 = Vanilla 1.0
echo 2 = Skull Rain 4.2
echo 3 = Blood Orchid 2.3.1
echo 4 = Chimera 3.1.0 (outbreak)
echo 5 = Grim Sky 3.3.0 (Mad House)
echo 6 = Burnt Horizon 4.1.0 (Rainbow is Magic)
echo 7 = Phantom Sight 4.2.0 (Showdown)
echo 8 = Shifting Tides 4.4.0 (Stadium)
echo ---------------------------------------
echo 9 = Discord
echo ---------------------------------------
set /p version="Enter Number:"

:: credits start
if %version%==9 ( 
cls
echo  /-----------------------------------\
echo / Discord : discord.gg/26qrqed        \
echo \-------------------------------------/
pause
cls
goto menu
)
:: credits end
set /p username="Enter Steam Username:"





::vanilla 1.0
if %version%==1 ( 
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Skull Rain 4.2
if %version%==2 ( 
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8358812283631269928 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 3893422760579204530 -username %username% -remember-password -dir "Downloads\Y1S1_Vanilla" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Blood Orchid 2.3.1 (idk if this the the real manifest)
if %version%==3 (
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 6309847129820490464 -username %username% -remember-password -dir "Downloads\Y2S3" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1739364586766771991 -username %username% -remember-password -dir "Downloads\Y2S3" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::chimera 3.1.0 
if %version%==4 (
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 5071357104726974256 -username %username% -remember-password -dir "Downloads\Y3S1_Outbreak" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 4701787239566783972 -username %username% -remember-password -dir "Downloads\Y3S1_Outbreak" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Grim Sky 3.3.0
if %version%==5 (
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 3546781236735558235 -username %username% -remember-password -dir "Downloads\Y3S3_MadHouse" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1556527176552332195 -username %username% -remember-password -dir "Downloads\Y3S3_MadHouse" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Burnt Horizon 4.1.0
if %version%==6 (
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 8356277316976403078 -username %username% -remember-password -dir "Downloads\Y4S2" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 5935578581006804383 -username %username% -remember-password -dir "Downloads\Y4S2" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Phantom Sight 4.2.0
if %version%==7 (
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 693082837425613508 -username %username% -remember-password -dir "Downloads\Y4S4_Showdown" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1739364586766771991 -username %username% -remember-password -dir "Downloads\Y4S4_Showdown" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)

::Shifting Tides 4.4.0
if %version%==8 (
dotnet DepotDownloader.dll -app 359550 -depot 377237 -manifest 299124516841461614 -username %username% -remember-password -dir "Downloads\Y4S4_Stadium" -validate -max-servers 15 -max-downloads 10
dotnet DepotDownloader.dll -app 359550 -depot 359551 -manifest 1842268638395240106 -username %username% -remember-password -dir "Downloads\Y4S4_Stadium" -validate -max-servers 15 -max-downloads 10
pause
cls
goto menu
)









