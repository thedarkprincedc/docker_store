FROM mysql
MAINTAINER FAN ZHISHEN <thedarkprincedc@yahoo.com>

EXPOSE 7302/tcp
ENV MYSQL_ROOT_PASSWORD=root \
     && MYSQL_DATABASE=romsync \
     && MYSQL_USER=ghost \
     && MYSQL_PASSWORD=password
