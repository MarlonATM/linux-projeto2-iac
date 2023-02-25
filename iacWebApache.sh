#!/bin/bash

echo "Incializando configurações."

apt-get update

apt-get upgrade -y

apt-get install apache2 -y

apt-get install unzip -y

systemctl start apache2

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -r * /var/www/html

echo "Configurações finalizadas."
