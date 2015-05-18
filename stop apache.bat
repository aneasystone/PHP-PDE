@echo off
echo Stopping Apache...  
taskkill /F /IM httpd.exe > nul
pause