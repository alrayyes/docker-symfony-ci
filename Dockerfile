FROM php:7.2-cli-alpine3.7

# PHP
RUN apk update && \
    apk upgrade && \
    apk add  --no-cache git openssh-client zlib-dev autoconf g++ make && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug && \
    docker-php-ext-install zip && \
    apk del zlib-dev autoconf g++ make

WORKDIR /var/www
