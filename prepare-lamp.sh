#! /bin/sh

echo "*** apt Update apt upgrade ***" 

apt update apt upgrade 


echo "*** Net-tools nmap apache2 ***"

apt install net-tools nmap apache2

echo "*** apache2  *** "

# why we need options :

sed -i "s/Options Indexes FollowSymLinks/Options FollowSymLinks/" /etc/apache2/apache2.conf

systemctl stop apache2.service systemctl start apache2.service systemctl enable apache2.service

echo "***  MariaDB Database Server ***"

apt install mariadb-server mariadb-client

systemctl enable mysql.service

#sudo mysql_secure_installation

#sudo systemctl restart mysql.service

echo "*** PHP 7.1  ***"

# check why we need this:

apt install software-properties-common

add-apt-repository ppa:ondrej/php

apt update

apt install php7.3 libapache2-mod-php7.3 php7.3-common php7.3-mbstring php7.3-xmlrpc php7.3-soap php7.3-gd php7.3-xml php7.3-intl php7.3-mysql php7.3-cli php7.3-zip php7.3-curl


echo "*** Until here Packages successfully updated and install ***"
