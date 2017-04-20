FROM k0st/alpine-apache-php:latest
MAINTAINER FAN ZHISHEN <thedarkprincedc@yahoo.com>

ENV TIMEZONE="US/United States" \
     PHP_MEMORY_LIMIT="512M" \
     MAX_UPLOAD="50M" \
     PHP_MAX_FILE_UPLOAD="200" \
     PHP_MAX_POST="100M"

RUN apk update \
     && apk add php-pdo_mysql \
     && mkdir /init-start && cd $_ \
     && wget --no-check-certificate --content-disposition https://www.dropbox.com/s/t9ik2nj604bhsj3/romsync-frontend-1_0.zip?dl=0 \
     && cp romsync /app \
     && cp romsync-resources /app/resources
EXPOSE 80/tcp
