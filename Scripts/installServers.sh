#!/bin/bash
# -*-ENCODING UTF-8 -*-
apt-get update -y
apt-get install apache2 -y
apt-get install php -y
apt-get install mysql-server -y
apt-get install phpmyadmin php-mbstring php-zip php-gd php-json php-curl -y
nano /etc/apache2/apache2.conf
/etc/init.d/apache2 restart
dpkg-reconfigure phpmyadmin
nano /etc/php/7.4/apache2/php.ini
phpenmod mbstring
mysql -u root
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
touch /etc/apt/sources.list.d/mongodb-org-4.4.list
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
apt-get update 
apt-get install -y mongodb-org
echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-database hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections
systemctl start mongod
systemctl daemon-reload
apt-get install python3-pip -y
apt-get update
apt-get upgrade -y
pip install jupyterlab -y
apt-get -y install postgresql
apt-get update
apt-get upgrade -y
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-get install nodejs -y
apt-get install npm -y
npm install -g npm@latest
npm cache clean -f
npm install -g n
n stable
apt install docker.io
curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
npm install -g eslint
exit
