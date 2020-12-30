#!/bin/bash
jawaban="y"
read -p "Apakah kamu yakin akan menginstal database Mysql ? (y/n) " chose;
if [ $chose == $jawaban ];
then
    echo "Menyiapkan instalasi database"
    sudo apt-get update
    echo "melakukan instalasi database"
    sudo apt-get install -y mysql-server
    echo "instalasi database telah selesai"
else
    echo "instalasi dibatalkan"
fi
                    
