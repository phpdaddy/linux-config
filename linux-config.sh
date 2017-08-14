#!/bin/sh
#Install LAMP
sudo apt-get update
sudo apt-get install apache2
sudo apt-get install mysql-server
mysql_secure_installation
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql
sudo systemctl restart apache2
sudo nano /var/www/html/info.php
sudo echo "<?php
phpinfo();
?>" >> /var/www/html/info.php
#TEST  http://localhost/info.php
sudo apt-get update
sudo a2enmod rewrite
sudo service apache2 restart
sudo apt-get install curl
sudo mkdir -p /usr/local/bin
sudo curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony
sudo chmod a+x /usr/local/bin/symfony
sudo apt install composer
#Install phpmyadmin
sudo apt-get update
sudo apt-get install phpmyadmin php-mbstring php-gettext
sudo phpenmod mcrypt
sudo phpenmod mbstring
sudo echo "Include /etc/phpmyadmin/apache.conf"  /etc/apache2/apache2.conf
sudo service apache2 restart

