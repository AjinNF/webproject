#!/bin/bash
jawaban="y"
read -p "Apakah kamu yakin akan melakukan setup aplikasi pesbuk? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan setup aplikasi"
    sudo apt-get install unzip
    unzip master.zip
    echo "berpidah ke webproject folder"
    cd webproject-master
    sudo rm /var/www/html/*
    echo "memindahkan file web aplikasi ke /var/www/html"
    sudo cp -r * /var/www/html
    echo "instalasi telah selasai"
else
    echo "instalasi dibatalkan"
fi




