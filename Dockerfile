FROM php:7.4-fpm

RUN apt-get update 
RUN apt-get install -y libpq-dev zip unzip npm apache2
RUN docker-php-ext-install pdo pdo_pgsql mbstring gd
RUN a2enmod rewrite
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# install lets encrypt
RUN apt-get -y install certbot python3-certbot-apache
