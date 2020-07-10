# Update Packages
apt-get update
# Upgrade Packages
apt-get upgrade

# Basic Linux Stuff
apt-get install -y git

# Apache
apt-get install -y apache2

# Enable Apache Mods
a2enmod rewrite

#Add Onrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update

# Install PHP
apt-get install -y php7.4

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.4

# Restart Apache
service apache2 restart

# PHP Mods
apt-get install -y php7.4-common
apt-get install -y php7.4-zip
apt-get install -y php7.4-gd
apt-get install -y php7.4-xml
apt-get install -y php7.4-curl
apt-get install -y php7.4-mbstring
apt-get install -y php7.4-gettext

# Set MySQL Pass
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Install MySQL
apt-get install -y mysql-server

# PHP-MYSQL lib
apt-get install -y php7.4-mysqli

# Prepare PHPMyAdmin
sudo phpenmod mbstring
sudo service apache2 restart

# Create Symlink here to url/datacontrol for phpmyadmin
ln -s /usr/share/phpmyadmin /var/www/html/datacontrol

# Enable SSL Apache
sudo a2enmod ssl

# Restart Apache
sudo service apache2 restart
