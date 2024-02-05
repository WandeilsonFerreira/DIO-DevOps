#!/bin/bash

echo "Atualizando o sistema"

apt-get updade && upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando, descompactando e organizando arquivos do projeto"
cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html
