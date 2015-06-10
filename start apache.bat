@echo off
set PDEROOT="C:\Users\aneasystone\Desktop\svn\Github\PHP-PDE"
set APACHEROOT="C:\Users\aneasystone\Desktop\svn\Github\PHP-PDE\webserver\Apache-2.4"
set PHPROOT="C:\Users\aneasystone\Desktop\svn\Github\PHP-PDE\interpreter\php-5.6.9"
set DOCROOT="C:\Users\aneasystone\Desktop\svn\Github\website\front"
echo Starting Apache...
copy "%APACHEROOT:~1,-1%\conf\httpd.conf.bak" "%APACHEROOT:~1,-1%\conf\httpd.conf" /Y
"%PDEROOT:~1,-1%\utils\fnr.exe" --cl --dir "%APACHEROOT:~1,-1%\conf" --fileMask "httpd.conf" --find "[${SRVROOT}]" --replace "%APACHEROOT:~1,-1%" --silent
"%PDEROOT:~1,-1%\utils\fnr.exe" --cl --dir "%APACHEROOT:~1,-1%\conf" --fileMask "httpd.conf" --find "[${MODPHPPATH}]" --replace "%PHPROOT:~1,-1%\php5apache2_4.dll" --silent
"%PDEROOT:~1,-1%\utils\fnr.exe" --cl --dir "%APACHEROOT:~1,-1%\conf" --fileMask "httpd.conf" --find "[${PHPINIDIR}]" --replace "%PHPROOT:~1,-1%" --silent
"%PDEROOT:~1,-1%\utils\fnr.exe" --cl --dir "%APACHEROOT:~1,-1%\conf" --fileMask "httpd.conf" --find "[${DOCROOT}]" --replace "%DOCROOT:~1,-1%" --silent
"%PDEROOT:~1,-1%\utils\RunHiddenConsole" "%APACHEROOT:~1,-1%\bin\httpd.exe"
pause