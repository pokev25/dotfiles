#!/bin/bash

# epel, remi  저장소 추가
REMI=http://remi.kazukioishi.net/enterprise/remi-release-6.rpm

#yum -y --nogpgcheck install ${EPEL} >/dev/null
#yum -y install epel-release
yum -y install ${REMI}

#Mysql common Driver 설치용
cp ./MariaDB_10.repo /etc/yum.repos.d/MariaDB.repo

# 기본 설치 프로그램
yum -y install yum-utils
yum-config-manager --enable remi
yum -y update
yum -y install php-cli php-fpm php-mysql php-pecl-zendopcache php-xml php-mbstring php-pdo php-gd
yum -y install fail2ban htop vsftpd 
yum -y install tmux vim lrzsz wget lftp
yum -y install java-1.8.0-openjdk-devel
