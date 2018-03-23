#!/bin/bash
#Komentarze dodaje się przez hasztag

echo "Bede instalował"
echo "Czy tego chcesz czy nie"

apt-get update -y
apt-get upgrade -y
apt-get install vim -y
apt-get install mc -y
apt-get install net-tools -y
apt-get install smartmontools -y 
#Instalacja FTP
apt-get install proftpd-basic -y
service proftpd restart
echo "Skończyłem"
