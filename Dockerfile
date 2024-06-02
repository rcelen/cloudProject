# Use the official PHP image with Apache
FROM php:apache

# Install the mysqli extension for PHP
RUN docker-php-ext-install mysqli

# Copy the content of your PHP application to the Apache document root
COPY . /var/www/html/

# Set permissions for the Apache document root
RUN chown -R www-data:www-data /var/www/html
