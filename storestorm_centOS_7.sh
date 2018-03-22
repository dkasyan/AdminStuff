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

smartctl -t short /dev/sda > iaa.txt
smartctl -t short /dev/sdb > ibb.txt
smartctl -t shrot /dev/sdc > icc.txt
smartctl -t short /dev/sdd > idd.txt

