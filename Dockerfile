FROM debian:wheezy

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install apache2 php5 php5-mysql sudo mysql-server wget nano net-tools
  
ADD run.sh /run.sh
RUN chmod 755 /*.sh
# Add volumes for MySQL 
VOLUME  ["/etc/mysql", "/var/lib/mysql" ]
EXPOSE 80 3306
CMD ["/run.sh"]
  
