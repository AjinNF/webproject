#!/bin/bash
jawaban="y"
read -p "Apakah kamu yakin akan menginstal web server apache2 + PHP ? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan instalasi web server"
    sudo apt-get update
    echo "melakukan instalasi web server"
    sudo apt-get install -y apache2 php php-mysql
    echo "instalasi webserver telah selesai"
else
    echo "instalasi dibatalkan"
fi

