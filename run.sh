###################################################################################################################
#my own little hark
################# my little hack ##################
wget -O /tmp/package.tar.gz https://github.com/litzinetz-de/OpenVoucher/archive/0.4.2.tar.gz
tar -zxf /tmp/package.tar.gz -C /tmp/
cp -pr /tmp/OpenVoucher-*/src/* /var/www/
rm -rf /var/www/.htaccess
################################################################
mysql -uroot -e "CREATE USER 'local'@'%' IDENTIFIED BY 'local'"     
mysql -uroot -e "GRANT ALL PRIVILEGES ON *.* TO 'local'@'%' WITH GRANT OPTION"                                                                            
#mysql -uopenvoucher -popenvoucher </app2/database/tables.sql 
mysql -ulocal -plocal </tmp/OpenVoucher-*/database/tables.sql
###################################################################################################################

###################################################################################################################
