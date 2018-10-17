FROM rolandocaldas/php:7.2.11

# install xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug
