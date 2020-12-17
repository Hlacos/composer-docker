FROM php:7.4

RUN curl -sS https://getcomposer.org/installer | php -- \
--install-dir=/usr/bin --filename=composer && chmod +x /usr/bin/composer

RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip \
        git-core \
    && docker-php-ext-install mysqli pdo pdo_mysql \
    && docker-php-ext-install zip exif \
    && pecl install mongodb

#RUN composer global require hirak/prestissimo

RUN apk add --no-cache \
    libpng-dev \
    libjpeg-turbo \
    libjpeg-turbo-dev 

RUN docker-php-ext-configure gd \
    --with-gd \
    --with-jpeg-dir \
    --with-png-dir \
    --with-zlib-dir

WORKDIR /project

