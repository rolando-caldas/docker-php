FROM php:7.4.5-fpm-buster

WORKDIR "/application"

RUN apt-get update \
    && apt-get install -y git zip libzip-dev vim libicu-dev zlib1g-dev mariadb-client libpng-dev libjpeg-dev libpq-dev libonig-dev \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* \
 	&& docker-php-ext-configure gd --with-jpeg=/usr \
    && docker-php-ext-install intl zip mysqli gd mbstring pdo pdo_mysql pdo_pgsql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Fix permission problems
RUN usermod -u 1000 www-data

RUN echo 'alias ll="ls -l"' >> ~/.bashrc
RUN echo 'alias sf="php bin/console"' >> ~/.bashrc