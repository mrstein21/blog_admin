FROM composer:2.0 as vendor

WORKDIR /app

COPY database/ database/
COPY composer.json composer.json
COPY composer.lock composer.lock

RUN composer self-update --1

RUN composer install \
    --no-interaction \
    --no-plugins \
    --no-scripts \
    --no-dev \
    --prefer-dist

COPY . .
RUN composer dump-autoload


FROM node:14.9 as frontend

WORKDIR /app

COPY artisan package.json webpack.mix.js yarn.lock tailwind.js ./

COPY resources/js ./resources/js
COPY resources/sass ./resources/sass



FROM php:7.4-fpm

WORKDIR /var/www/

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    locales \
    zip \
    libonig-dev \
    libzip-dev \
    jpegoptim optipng pngquant gifsicle \
    ca-certificates \
    vim \
    tmux \
    unzip \
    git \
    cron \
    supervisor \
    curl

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install extensions
RUN docker-php-ext-install pdo_mysql mbstring zip exif pcntl
RUN docker-php-ext-configure gd --with-jpeg=/usr/include/ --with-freetype=/usr/include/
RUN docker-php-ext-install gd

COPY --from=frontend /app/node_modules/ ./node_modules/
COPY --from=frontend /app/public/js/ ./public/js/
COPY --from=frontend /app/public/css/ ./public/css/
COPY --from=frontend /app/public/mix-manifest.json ./public/mix-manifest.json
# Copy Composer dependencies
COPY --from=vendor /app/vendor/ ./vendor/

COPY . /var/www/

COPY --chown=www-data:www-data . /var/www/
RUN chown -R www-data:www-data /var/www
RUN chown -R www-data:www-data /var/log/supervisor


# Expose port 9000
EXPOSE 9000
USER www-data
