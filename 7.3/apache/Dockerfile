FROM php:7.3.9-apache-stretch

RUN a2enmod rewrite

RUN apt-get update \
    && apt-get install -y git unzip vim libicu-dev zlib1g-dev mysql-client libpng-dev libjpeg-dev libpq-dev \
    && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/doc/* \
 	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
    && docker-php-ext-install intl zip mysqli gd mbstring pdo pdo_mysql pdo_pgsql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Fix permission problems
RUN usermod -u 1000 www-data

RUN echo 'alias ll="ls -l"' >> ~/.bashrc
RUN echo 'alias sf="php bin/console"' >> ~/.bashrc

WORKDIR /var/www
