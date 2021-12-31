:: Created by: Shawn Brink
:: Created on: April 27th 2015
:: Updated on: October 11th 2018
:: Modified 2020.10.23.2251 -- Danny Quah (me@DannyQuah.com)
:: - Shutdown rather than Restart
:: Tutorial: https://www.tenforums.com/tutorials/5645-rebuild-icon-cache-windows-10-a.html


@echo off
set iconcache=%localappdata%\IconCache.db
set iconcache_x=%localappdata%\Microsoft\Windows\Explorer\iconcache*

echo.
echo The explorer process must be temporarily killed before deleting the IconCache.db file. 
echo.
echo Please SAVE ALL OPEN WORK before continuing.
echo.
pause
echo.
If exist "%iconcache%" goto delete
echo.
echo The %localappdata%\IconCache.db file has already been deleted.
echo. 
If exist "%iconcache_x%" goto delete
echo.
echo The %localappdata%\Microsoft\Windows\Explorer\IconCache_*.db files have already been deleted.
echo.
exit /B


:delete
echo.
echo Attempting to delete IconCache.db files...
echo.
ie4uinit.exe -show
taskkill /IM explorer.exe /F 
If exist del /A /F /Q "%iconcache%"
If exist del /A /F /Q "%iconcache_x%"
start explorer.exe
echo.
echo IconCache database files have been successfully deleted.
goto restart


:restart
echo.
echo.
echo You will need to restart the PC to finish rebuilding your icon cache.
echo.
CHOICE /C:YN /M "Do you want to shutdown the machine now?"
IF ERRORLEVEL 2 goto no
IF ERRORLEVEL 1 goto yes

:yes
shutdown /s /f /t 00

:no
exit /B
