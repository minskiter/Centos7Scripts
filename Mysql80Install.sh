#! /bin/bash

## Centos 7
echo "Get Mysql Repo"
wget --no-check-certificate https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm

echo "Install Mysql"
yum -y install mysql80-community-release-el7-3.noarch.rpm
yum install mysql-community-server -y

echo "Del Cache"
rm -rf mysql80-community-release-el7-3.noarch.rpm

echo "Show Password"
grep "password" /var/log/mysqld.log
