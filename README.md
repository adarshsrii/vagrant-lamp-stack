## Vagrant Setup

#### LAMP stack Vagrant box
# Linux - ubuntu-20.04  
# Apache - apache2  
# MySQL  - mysql-server
# PHP - PHP 7.4  



# SSL - Support - Install MKCERT

# Installation
# Warning: the rootCA-key.pem file that mkcert automatically generates gives complete power to intercept secure requests from your machine. Do not share it.

# macOS - On macOS, use Homebrew

brew install mkcert
brew install nss # if you use Firefox or MacPorts.


# Install MKCERT with:

mkcert -install

mkcert synch.dev "*.synch.dev" synchsofthq.development "*.synchsofthq.development" localhost 127.0.0.1 ::1

# Make the folder in WebSpace named SSL and put both files there.


# vagrant ssh into server by

vagrant ssh

# edit the /etc/apache2/apache2.conf and set AllowOverride All for module rewrite to work.

sudo nano /etc/apache2/apache2.conf

# edit the /etc/apache2/sites-available/default-ssl.conf file and change this.

sudo nano /etc/apache2/sites-available/default-ssl.conf

SSLCertificateFile      /var/www/html/SSL/synch.dev+6.pem  
SSLCertificateKeyFile   /var/www/html/SSL/synch.dev+6-key.pem

# Now enable the ssl site

sudo a2ensite default-ssl
sudo service apache2 restart

# Enable Phpmyadmin now
sudo apt install -y phpmyadmin

sudo service apache2 restart