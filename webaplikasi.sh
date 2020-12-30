#!/bin/bash
jawaban="y"
read -p "Apakah kamu yakin akan melakukan setup aplikasi pesbuk? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan setup aplikasi"
    echo "berpindah ke home"
    cd
    #mendownload file dari repository ajin di github
    wget https://github.com/AjinNF/webproject/archive/master.zip
    sudo apt-get install unzip
    unzip master.zip
    echo "berpidah ke webproject folder"
    cd webproject-master
    sudo rm /var/www/html/index.html
    echo "memindahkan file web aplikasi ke /var/www/html"
    sudo mv webproject-master/* /var/www/html
    cd
    echo "instalasi telah selasai"
else
    echo "instalasi dibatalkan"
fi

jawaban="y"
read -p "Apakah kamu yakin akan melakukan konfigurasi  pada Mysql Database? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan konfigurasi"
    sudo mysql -u root -p
    create user 'devopsajin'@'localhost' identified by '123456';
    grant all privileges on *.* to 'devopsajin'@'localhost';
    /q
    echo "masuk ke mysql sebagai devopsajin"
    sudo mysql -u devopsajin -p
    create database dbsosmed;
    /q
    echo "berpidah ke /var/www/html"
    cd /var/www/html
    sudo mysql -u devopsajin -p dbsosmed < dump.sql
    echo "instalasi telah selasai"
else
    echo "instalasi dibatalkan"
fi


