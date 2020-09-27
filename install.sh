# Common
sudo apt update
sudo apt install -y curl
sudo apt install -y git

# Apache
sudo apt install -y apache2
sudo a2enmod expires
sudo a2enmod headers
sudo a2enmod include
sudo a2enmod rewrite

# PHP
sudo apt install -y php

sudo apt install -y libapache2-mod-php
apt install php-all-dev
apt install php-common
apt install php-mcrypt
apt install php-mysql
apt install php-zip

sudo service apache2 restart

# MySQL
sudo apt install -y mysql-server

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

# Node
sudo apt install -y nodejs