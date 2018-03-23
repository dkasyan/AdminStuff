#1. Instalacja paczek 


apt-get install apache2 -y
apt install wget bash-completion unzip
#usunięcie przykładowej strony
hostnamectl set-hostname icinga
hostnamectl
cat /etc/hostname

apt install apache2 libapache2-mod-php7.0 php7.0-xml php7.0-opcache php7.0-xml php7.0-mbstring php7.0-json php7.0-curl php7.0-ldap php7.0-cli php7.0-gd php7.0-intl php7.0-readline -y
#Instalacja firewalla Potwierdzić tak 
apt-get install -y iptables-persistent
#Dodanie wyjątku 
iptables -I INPUT -p tcp --destination-port 80 -j ACCEPT 
iptables-save
service netfilter-persistent reload
a2enmod rewrite
systemctl restart apache2
a2enmod rewrite
a2enmod ssl rewrite
systemctl restart apache2
a2ensite default-ssl.conf
