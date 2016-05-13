FROM debian:wheezy

# Install packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
  apt-get -y install apache2 php5 php5-mysql sudo mysql-server
