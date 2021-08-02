FROM php:7.2-fpm

WORKDIR /var/www/

RUN apt-get update && apt-get install -y libmcrypt-dev  \
    && docker-php-ext-install mcrypt pdo_mysql

RUN curl -sS https://getcomposer.org/installer | \
            php -- --install-dir=/usr/bin/ --filename=composer  

COPY . /var/www/

RUN composer install

# Expose port 9000
EXPOSE 9000
