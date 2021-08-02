FROM php:7.2-fpm

WORKDIR /var/www/

RUN docker-php-ext-install pdo_mysql mbstring  exif pcntl
RUN docker-php-ext-configure gd 
RUN docker-php-ext-install gd


RUN curl -sS https://getcomposer.org/installer | \
            php -- --install-dir=/usr/bin/ --filename=composer  

COPY . /var/www/

RUN composer install

# Expose port 9000
EXPOSE 9000
