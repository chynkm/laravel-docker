FROM php:7.3-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN /sbin/apk update
RUN /sbin/apk add sqlite
RUN curl -sS https://getcomposer.org/installer | php --install-dir=/usr/local/bin --filename=composer
