#!/bin/bash
#Komentarze dodaje się przez hasztag

echo "Bede instalował"
echo "Czy tego chcesz czy nie"
sudo yum -y check-update 
sudo yum -y update 
sudo yum -y upgrade 
sudo yum -y install vim 
sudo yum -y install mc 
sudo yum -y install net-tools 
sudo yum -y install smartmontools 
sudo yum -y install lftp 
echo "Zainstalowałem wszystko co potrzebne" > logsto.txt
lsblk 
echo "Sprawdzam jakie dyski mam do sprawdzenia :)" >> logsto.txt
lsblk >> logsto.txt
sudo smartctl -t short /dev/sda >> logsto.txt
sudo smartctl -t short /dev/sdb >> logsto.txt
sudo smartctl -t shrot /dev/sdc >> logsto.txt
sudo smartctl -t short /dev/sdd >> logsto.txt
echo "Daj mi odpocząć 20 min" >> logsto.txt
sleep 20m
echo "Zaczynam sprawdzać dyski dokładniej" >> logsto.txt
sudo smartctl -t long /dev/sda >> logsto.txt
sudo smartctl -t long /dev/sdb >> logsto.txt
sudo smartctl -t long /dev/sdc >> logsto.txt
sudo smartctl -t long /dev/sdd >> logsto.txt
echo "Ale się zmęczyłem, daj mi 450 min" >> logsto.txt
sleep 450m 
echo "Wypiszę ci co znalazłem do osobnych plików" >> logsto.txt
sudo smartctl -a /dev/sda > testa.txt
sudo smartctl -a /dev/sdb > testb.txt
sudo smartctl -a /dev/sdc > testc.txt
sudo smartctl -a /dev/sdd > testd.txt
#Kasowanie danych na dyskach
echo "Teraz trochę poczyszczę chwilę to zajmie" >> logsto.txt
sudo shred -vf -n1 /dev/sda >> logsto.txt
sudo shred -vf -n1 /dev/sdb >> logsto.txt
sudo shred -vf -n1 /dev/sdc >> logsto.txt
sudo shred -vf -n1 /dev/sdd >> logsto.txt
echo "Skrypt został wykonany poprawnie, dozobaczenia następnym razem" >> logsto.txt



lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put logsto.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testa.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testb.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testc.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testd.txt ; exit "

#lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put file ; exit "

sudo shutdown -h 10