#!/bin/bash

echo "Atualização do sistema..."

	apt-get update -y
	apt-get upgrade -y

echo " "

echo "Instalação do Apache..."

	apt-get install apache2 -y

echo " "

echo "Instalação do unzip..."

	apt-get install unzip -y

echo " "

echo "Download de arquivos do GitHub..."

	cd /tmp
	wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
	unzip main.zip 

echo " "

echo "Cópia de arquivos para a pasta padrão do Apache..."

	cd linux-site-dio-main
	cp -R * /var/www/html/

echo "Fim. "
