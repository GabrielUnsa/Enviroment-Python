#!/bin/bash
# -*-ENCODING UTF-8 -*-
apt-get update
apt-get upgrade -y
apt-get install geany -y
apt-get install curl -y
apt-get install apache2 -y

#Install php8.1
sudo apt install -y lsb-release ca-certificates apt-transport-https software-properties-common gnupg2
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/sury-php.list
curl -fsSL  https://packages.sury.org/php/apt.gpg| sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/sury-keyring.gpg
apt-get update
apt-get install php8.1
apt-get install php8.1-{bcmath,fpm,xml,mysql,zip,intl,ldap,gd,cli,bz2,curl,mbstring,pgsql,opcache,soap,cgi} -y

#Install Psql
apt-get install postgresql -y
service postgresql status
read
cd /tmp
sudo -u postgres psql
CREATE USER admin WITH PASSWORD 'Legolas*2020';
CREATE DATABASE moodle WITH OWNER admin ENCODING 'UTF8' LC_COLLATE='es_AR.utf8' LC_CTYPE='es_AR.utf8' TEMPLATE=template0;;

