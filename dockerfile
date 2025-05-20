FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && apt-get install apache2 php git curl wget -y

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN a2enmod rewrite

WORKDIR /var/www/html

RUN git clone https://github.com/andrezrv/wp-random-cats /var/www/html/app

RUN chmod 777 /var/www/html/*

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html/app/"]

