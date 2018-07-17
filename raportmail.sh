#!/bin/bash
df > stat.txt
TURYSTA=$(grep '/backup/turysta' stat.txt)
DEDYKOWANE=$(grep '/backup/dedykowane' stat.txt)
FUTBOLOWO=$(grep '/backup/futbolowo' stat.txt)
KVM=$(grep '/backup/kvm' stat.txt)
OVZ=$(grep '/backup/ovz' stat.txt)
FTP=$(grep '/ftp' stat.txt)

TTURYSTA=""

TOVZ="$OVZ/n$KVM/n$FTP"

echo $TOVZ | mail -s "Wpisz temat" d.kasyan@host1.eu
~                                                            