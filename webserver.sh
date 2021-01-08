#!/bin/bash
jawaban="y"
read -p "Apakah kamu yakin akan menginstal web server nginx ? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan instalasi web server"
    sudo apt-get update
    echo "melakukan instalasi web server"
    sudo apt-get install nginx
    echo "instalasi webserver telah selesai"
else
    echo "instalasi dibatalkan"
fi


jawaban="y"
read -p "Apakah kamu yakin akan menginstal database Mysql ? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan instalasi database"
    sudo apt-get update
    echo "melakukan instalasi database"
    sudo apt-get install mysql-server
    echo "instalasi database telah selesai"
else
    echo "instalasi dibatalkan"
fi


jawaban="y"
read -p "Apakah kamu yakin akan menginstal PHP fpm ? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan instalasi "
    sudo apt-get update
    echo "melakukan instalasi "
    sudo apt install php-fpm php-mysql
    echo "memindahkan file config nginx"
    sudo cp example.com /etc/nginx/sites-available
    sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/
    sudo unlink /etc/nginx/sites-enabled/default
    sudo systemctl reload nginx
    echo "instalasi  telah selesai"
else
    echo "instalasi dibatalkan"
fi


