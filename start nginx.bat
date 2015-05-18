@echo off
set NGINXROOT="C:\Users\aneasystone\Desktop\svn\Github\PHP-PDE\webserver\nginx-1.9.0"
set PHPROOT="C:\Users\aneasystone\Desktop\svn\Github\PHP-PDE\interpreter\php-5.6.9"
echo Starting PHP FastCGI...
utils\RunHiddenConsole "%PHPROOT:~1,-1%\php-cgi.exe" -b 9000 -c "%PHPROOT:~1,-1%\php.ini-development"
echo Starting Nginx...
utils\RunHiddenConsole "%NGINXROOT:~1,-1%\nginx.exe" -p "%NGINXROOT:~1,-1%"
pause