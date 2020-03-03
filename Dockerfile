FROM php:7.2

RUN curl -sS https://getcomposer.org/installer | php -- \
--install-dir=/usr/bin --filename=composer && chmod +x /usr/bin/composer

RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip \
    && docker-php-ext-install zip

WORKDIR /project
