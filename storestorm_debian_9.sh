#!/bin/bash
#Komentarze dodaje się przez hasztag

echo "Bede instalował"
echo "Czy tego chcesz czy nie"

apt-get update -y
apt-get upgrade -y
apt-get install vim -y
apt-get install htop -y
apt-get install mc -y
apt-get install net-tools -y
apt-get install smartmontools -y 
#Instalacja FTP
#apt-get install proftpd-basic -y
apt-get install coreutils -ys
#service proftpd restart 
apt-get install lftp -y
echo "Skończyłem"
echo "Zainstalowałem wszystko co potrzebne" > logsto.txt
lsblk 
chmod +777 logsto.txt
echo "Sprawdzam jakie dyski mam do sprawdzenia :)" >> logsto.txt
lsblk >> logsto.txt
smartctl -t short /dev/sda >> logsto.txt
smartctl -t short /dev/sdb >> logsto.txt
smartctl -t shrot /dev/sdc >> logsto.txt
smartctl -t short /dev/sdd >> logsto.txt
echo "Daj mi odpocząć 20 min" >> logsto.txt
sleep 20m
echo "Zaczynam sprawdzać dyski dokładniej" >> logsto.txt
smartctl -t long /dev/sda >> logsto.txt
smartctl -t long /dev/sdb >> logsto.txt
smartctl -t long /dev/sdc >> logsto.txt
smartctl -t long /dev/sdd >> logsto.txt
echo "Ale się zmęczyłem, daj mi 450 min" >> logsto.txt
sleep 450m 
echo "Wypiszę ci co znalazłem do osobnych plików" >> logsto.txt
smartctl -a /dev/sda > testa.txt
smartctl -a /dev/sdb > testb.txt
smartctl -a /dev/sdc > testc.txt
smartctl -a /dev/sdd > testd.txt
#Kasowanie danych na dyskach
echo "Teraz trochę poczyszczę chwilę to zajmie" >> logsto.txt
shred -vf -n1 /dev/sda 
echo "Wyczyściłem dev/sda" >> logsto.txt
shred -vf -n1 /dev/sdb 
echo "Wyczyściłem dev/sdb" >> logsto.txt
shred -vf -n1 /dev/sdc 
echo "Wyczyściłem dev/sdc" >> logsto.txt
shred -vf -n1 /dev/sdd 
echo "Wyczyściłem dev/sdd" >> logsto.txt
echo "Skasowałem wszystkie dane" >> logsto.txt
echo "Skrypt został wykonany poprawnie, dozobaczenia następnym razem" >> logsto.txt
echo "Jeszcze tylko wyślę pliki i kończę"


lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put logsto.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testa.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testb.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testc.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testd.txt ; exit "

#lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put file ; exit "
echo "Elo"

sudo shutdown -h 10
