#!/bin/bash

#atualizar sistema e instalar o apache e unzip
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y

#baixa código do github para /tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip --show-progress

#renomeia o index.html padrão do apache, descompacta e copia os arquivos baixados para o diretorio http
mv /var/www/html/index.html /var/www/html/index.old
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
