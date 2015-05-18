@echo off
set APACHEROOT="C:\Users\aneasystone\Desktop\svn\Github\PHP-PDE\webserver\Apache-2.4"
set PHPROOT="C:\Users\aneasystone\Desktop\svn\Github\PHP-PDE\interpreter\php-5.6.9"
echo Starting Apache...
copy "%APACHEROOT:~1,-1%\conf\httpd.conf.bak" "%APACHEROOT:~1,-1%\conf\httpd.conf" /Y
utils\fnr.exe --cl --dir "%APACHEROOT:~1,-1%\conf" --fileMask "httpd.conf" --find "[${SRVROOT}]" --replace "%APACHEROOT:~1,-1%" --silent
utils\fnr.exe --cl --dir "%APACHEROOT:~1,-1%\conf" --fileMask "httpd.conf" --find "[${MODPHPPATH}]" --replace "%PHPROOT:~1,-1%\php5apache2_4.dll" --silent
utils\fnr.exe --cl --dir "%APACHEROOT:~1,-1%\conf" --fileMask "httpd.conf" --find "[${PHPINIDIR}]" --replace "%PHPROOT:~1,-1%" --silent
utils\RunHiddenConsole %APACHEROOT:~1,-1%\bin\httpd.exe
pause