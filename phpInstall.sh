#! /bin/bash

## this is a script for install php7.3 from yum repo

echo "install EPEL"
yum install epel-release -y

echo "install remi"
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm  -y
yum install yum-utils -y

echo "install PHP7.3"
yum install -y php73-php-fpm php73-php-cli php73-php-bcmath php73-php-gd php73-php-json php73-php-mbstring php73-php-mcrypt php73-php-mysqlnd php73-php-opcache php73-php-pdo php73-php-pecl-crypto php73-php-pecl-mcrypt php73-php-pecl-geoip php73-php-recode php73-php-snmp php73-php-soap php73-php-xmll

echo "install complete"