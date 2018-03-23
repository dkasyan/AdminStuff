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
lsblk 
lsblk > str.txt
sudo smartctl -t short /dev/sda > iaa.txt
sudo smartctl -t short /dev/sdb > ibb.txt
sudo smartctl -t shrot /dev/sdc > icc.txt
sudo smartctl -t short /dev/sdd > idd.txt
sleep 20m
sudo smartctl -t long /dev/sda > iaal.txt
sudo smartctl -t long /dev/sdb > ibbl.txt
sudo smartctl -t long /dev/sdc > iccl.txt
sudo smartctl -t long /dev/sdd > iddl.txt
sleep 450m
sudo smartctl -a /dev/sda > testa.txt
sudo smartctl -a /dev/sdb > testb.txt
sudo smartctl -a /dev/sdc > testc.txt
sudo smartctl -a /dev/sdd > testd.txt
#Kasowanie danych na dyskach
sudo shred -vf -n1 /dev/sda >dela.txt
sudo shred -vf -n1 /dev/sdb >delb.txt
sudo shred -vf -n1 /dev/sdc >delc.txt
sudo shred -vf -n1 /dev/sdd >deld.txt
echo "Skrypt został wykonany poprawnie"


lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put iaa.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put ibb.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put icc.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put idd.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put iaal.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put ibbl.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put iccl.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put iddl.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testa.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testb.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testc.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put testd.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put dela.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put delb.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put delc.txt ; exit "
lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put deld.txt ; exit "
#lftp -u dftp,zaq1@WSX 192.168.150.96 -e "put file ; exit "

sudo shutdown -h 10