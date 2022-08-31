# syntax=docker/dockerfile:1

FROM httpd:2.4
WORKDIR /usr/local/apache2/htdocs/
COPY . /var/www/html
COPY . /var/www
MAINTAINER willtheorangeguy
