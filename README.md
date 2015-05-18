PHP-PDE - PHP Portable Develop Enviroment
===============================================================
绿色版PHP开发环境，直接运行脚本文件即可开发和运行PHP网站，支持Apache和Nginx两大Web服务器。

Current Package contains:
-------------------------
- php-5.6.9
- Apache-2.4
- nginx-1.9.0
- fnr.exe from http://findandreplace.codeplex.com/
- RunHiddenConsole.exe from http://redmine.lighttpd.net/attachments/660/RunHiddenConsole.zip

Usage:
-----------------------
 - 启动Apache：start apache.bat（注意修改APACHEROOT和PHPROOT两个变量对应你的开发环境）
 - 启动Nginx：start nginx.bat（注意修改NGINXROOT和PHPROOT两个变量对应你的开发环境）
 - 停止Apache：stop apache.bat
 - 停止Nginx：stop nginx.bat
 
Remarks:
-----------------------
 - Apache对应的www目录为：webserver\Apache-2.4\htdocs
 - Nginx对应的www目录为：webserver\nginx-1.9.0\html