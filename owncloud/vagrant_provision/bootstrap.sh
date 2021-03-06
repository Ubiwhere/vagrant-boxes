#!/usr/bin/env bash

sudo apt-get update
sudo apt-get -y install build-essential
sudo apt-get -y install git-core
sudo apt-get -y install python3 python3-pip python-dev python3-jinja2 libjpeg-dev
sudo apt-get -y install postgresql postgresql-contrib libpq-dev postgresql-server-dev-9.3 postgresql-9.3-postgis-2.1 postgresql-9.3-postgis-2.1-scripts
sudo apt-get -y install apache2 libapache2-mod-php5
sudo apt-get -y install php5-gd php5-json php5-pgsql php5-curl
sudo apt-get -y install php5-intl php5-mcrypt php5-imagick

# Create PosgreSQL User and Database
sudo su postgres -c "psql -c \"CREATE ROLE vagrant SUPERUSER LOGIN PASSWORD 'vagrant'\" "
sudo su postgres -c "createdb -E UTF8 -T template0 --locale=en_US.utf8 -O vagrant owncloud_db"

# Install Owncloud
cd /var/www/
ocdev setup base
cp -avr data/ core/
sudo sh write2configdir.sh
sudo service apache2 restart