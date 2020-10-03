# Common
sudo apt update
sudo apt install -y curl
sudo apt install -y git

# Enable Ubuntu Firewall and allow SSH & MySQL Ports
ufw enable
ufw allow 22
ufw allow 3306

# Apache
sudo apt install -y apache2
sudo a2enmod expires
sudo a2enmod headers
sudo a2enmod include
sudo a2enmod rewrite

# PHP
sudo apt install -y php

sudo apt install -y libapache2-mod-php
sudo apt install -y php-all-dev
sudo apt install -y php-common
sudo apt install -y php-mcrypt
sudo apt install -y php-mysql
sudo apt install -y php-zip

# Enable rewrites via .htaccess
sudo tee -a /etc/apache2/sites-available/000-default.conf > /dev/null <<EOT
<Directory /var/www/html>
        Options Indexes FollowSymLinks MultiViews
        AllowOverride All
        Require all granted
</Directory>
EOT

sudo service apache2 restart

# MySQL
sudo apt install -y mysql-server

sudo mysqld --initialize-insecure --user=root
sudo mysql -p -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY ''; FLUSH PRIVILEGES;"

# Composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

# Node
sudo apt install -y nodejs