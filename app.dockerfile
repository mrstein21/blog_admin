FROM php:7.2-fpm

WORKDIR /var/www/

RUN docker-php-ext-install pdo pdo_mysql


RUN curl -sS https://getcomposer.org/installer | \
            php -- --install-dir=/usr/bin/ --filename=composer  

COPY . /var/www/

RUN composer install

# Expose port 9000
EXPOSE 9000
