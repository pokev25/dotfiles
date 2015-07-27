#!/bin/bash

# epel, remi  저장소 추가
EPEL=https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
REMI=http://rpms.remirepo.net/enterprise/remi-release-6.rpm

yum -y --nogpgcheck install ${EPEL} >/dev/null
yum -y --nogpgcheck install ${REMI} >/dev/null

#Mysql common Driver 설치용
cp ./MariaDB_55.repo /etc/yum.repos.d/MariaDB.repo

# 기본 설치 프로그램
yum -y install yum-utils
yum-config-manager --enable remi
yum -y update
yum -y install httpd
yum -y install php php-cli php-fpm php-mysql php-pecl-zendopcache php-xml php-mbstring php-pdo php-gd
yum -y install fail2ban htop vsftpd 
yum -y install tmux vim lrzsz wget lftp
yum -y install java-1.8.0-openjdk-devel