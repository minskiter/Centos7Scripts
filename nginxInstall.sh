#! /bin/bash

## this is a script for install nginx from yum repo

echo "install yum-utils..."
yum install yum-utils -y

echo "new nginx repo file..."
echo "[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key

[nginx-mainline]
name=nginx mainline repo
baseurl=http://nginx.org/packages/mainline/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=0
gpgkey=https://nginx.org/keys/nginx_signing.key
" >> /etc/yum.repos.d/nginx.repo

echo "install nginx"
yum install nginx -y
echo "install complete!"