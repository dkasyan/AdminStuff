#!/bin/bash
#Komentarze dodaje się przez hasztag

echo "Bede instalował"
echo "Czy tego chcesz czy nie"
yum check-update -y
yum update -y
yum upgrade -y
yum vim -y
yum  mc -y
yum net-tools -y
yum smartmontools -y
lsblk 
lsblk > str.txt
sudo smartctl -t short /dev/sda > iaa.txt
sudo smartctl -t short /dev/sdb > ibb.txt
sudo smartctl -t shrot /dev/sdc > icc.txt
sudo smartctl -t short /dev/sdd > idd.txt
sleep 5m
sudo smartctl -t long /dev/sda > iaal.txt
sudo smartctl -t long /dev/sdb > ibbl.txt
sudo smartctl -t long /dev/sdc > iccl.txt
sudo smartctl -t long /dev/sdd > iddl.txt
sleep 400m
sudo smartctl -a /dev/sda > testa.txt
sudo smartctl -a /dev/sdb > testb.txt
sudo smartctl -a /dev/sdc > testc.txt
sudo smartctl -a /dev/sdd > testd.txt
#Kasowanie danych na dyskach
sudo shred -vf -n1 /dev/sda >dela.txt
sudo shred -vf -n1 /dev/sdb >delb.txt
sudo shred -vf -n1 /dev/sdc >delc.txt
sudo shred -vf -n1 /dev/sdd >deld.txt
echo"Skrypt został wykonany poprawnie"




