FROM rolandocaldas/php:base

# install xdebug
RUN pecl install xdebug && docker-php-ext-enable xdebug
