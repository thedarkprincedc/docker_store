FROM k0st/alpine-apache-php:latest
MAINTAINER Brett Mosley <thedarkprincedc@yahoo.com>
ENV SYNOLOGY_HOST=127.0.0.1 \
     SYNOLOGY_PORT=5000 \
     SYNOLOGY_USERNAME=[username] \
     SYNOLOGY_PASSWORD=[password] \
     IPLOOKUP_HOST=ipaddress_lookup \
     IPLOOKUP_PORT=3012

COPY init.sh /image_start/init.sh
RUN apk update && apk add git && chmod 755 /image_start/init.sh && /image_start/init.sh
EXPOSE 80/tcp
