FROM k0st/alpine-apache-php:latest
MAINTAINER FAN ZHISHEN <thedarkprincedc@yahoo.com>

RUN apk update \
     && apk add php-pdo_mysql \
     && mkdir /init-start && cd $_ \
     && wget -O romsync-frontend-1_0.zip "https://www.dropbox.com/s/t9ik2nj604bhsj3/romsync-frontend-1_0.zip?dl=1" \
     && unzip romsync-frontend-1_0.zip \
     && cp -r romsync/* /app \
     && cp -r romsync-resources /app/resources
     && chmod 755 /app/resources/logs/app.log
     && chown apache /app/resources/logs/app.log
EXPOSE 80/tcp

ENV TIMEZONE="US/United States" \
     PHP_MEMORY_LIMIT="512M" \
     MAX_UPLOAD="50M" \
     PHP_MAX_FILE_UPLOAD=200 \
     PHP_MAX_POST="100M" \
     MYSQL_HOST=172.24.0.2 \
     MYSQL_PORT=3306 \
     MYSQL_DATABASE=romsync \
     MYSQL_USER=ghost \
     MYSQL_PASSWORD=password \
     YOUTUBE_KEY=AIzaSyAzejE7EzH8BSE1arIe1P70t0ruZphqe9A
