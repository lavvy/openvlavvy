#!/bin/bash

#install relivant packages
#apt-get install apache2 php5 php5-mysql sudo mysql-server

#download openvoucher
wget -O /tmp/package.tar.gz https://github.com/litzinetz-de/OpenVoucher/archive/0.4.2.tar.gz
tar -zxf /tmp/package.tar.gz -C /tmp/
cp -pr /tmp/OpenVoucher-*/src/* /var/www/html
#rm -rf /var/www/.htaccess

#create mysql table for openvoucher
mysql -uroot -pbitnami -e "CREATE USER 'local'@'%' IDENTIFIED BY 'local'"     
mysql -uroot -pbitnami -e "GRANT ALL PRIVILEGES ON *.* TO 'local'@'%' WITH GRANT OPTION"                                                                            
#mysql -uopenvoucher -popenvoucher </app2/database/tables.sql 
mysql -ulocal -plocal </tmp/OpenVoucher-*/database/tables.sql

