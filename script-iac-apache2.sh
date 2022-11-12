#!/bin/bash

echo "Atualizando Servidor"
apt-get update -y
apt-get upgrade -y

echo "Baixando Utilitarios"
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando site do GitHub"
cd /tmp/
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando site baixado"
unzip main.zip

echo "Entrando no diretorio padrao do site baixado"
cd linux-site-dio-main

echo "Copiando Arquivos do Site para diretorio padrao apache2"
cp  -R * /var/www/html/

