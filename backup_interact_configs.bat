echo off
setlocal EnableDelayedExpansion

REM Variables
REM Blue Prism interact install directory:
SET interactHomeDir=C:\Program Files (x86)\Blue Prism\
REM backup folder name
SET backupFolder=allInteract


REM Get local datetime. WMIC returns consistent format accross locales
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=%YYYY%%MM%%DD%" & set "timestamp=%HH%%Min%%Sec%"
set "fullstamp=%YYYY%-%MM%-%DD%_%HH%-%Min%-%Sec%"


REM print date, time and both
echo Date: "%datestamp%"
echo Time: "%timestamp%"
echo DateTime: "%fullstamp%"



REM Get location of backup (this) script
SET backupdir=%~dp0
echo Backup script location: %backupdir%

timeout 10


REM Loop every Interact folder and backup all *.json and *.config files
cd  /d "%interactHomeDir%"

for /D %%i in (*) do (
echo.
echo.
echo ## %%i ##:
set componentBackupDir="%backupdir%%backupFolder%\%fullstamp%\%%i"
echo Creating !componentBackupDir! 
mkdir !componentBackupDir!
copy "%interactHomeDir%%%i\*.json" !componentBackupDir!
copy "%interactHomeDir%%%i\*.config" !componentBackupDir!
)


echo.
cd /d %backupdir%

echo Backup Finished
timeout 60
