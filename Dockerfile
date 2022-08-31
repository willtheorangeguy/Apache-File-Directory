# syntax=docker/dockerfile:1

FROM apache
COPY . /var/www/html
MAINTAINER willtheorangeguy
