#!/bin/bash

rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
rpm -Uvh https://mirror.webtatic.com/yum/el6/latest.rpm

cp ./MariaDB.repo /etc/yum.repos.d
cp ./nginx.repo /etc/yum.repos.d

yum -y update
yum -y install MariaDB-server MariaDB-client
yum -y install nginx php54w-fpm php54w-mysql php54w-pecl-zendopcache php54w-xml php54w-mbstring php54w-pdo php54w-gd
yum -y install fail2ban htop tmux vsftpd vim lrzsz

cp .tmux.conf ~/
cp .vimrc ~/
chmod +x tmx
cp tmx /usr/local/bin

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim