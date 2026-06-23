# Use official PHP with Apache
FROM php:8.2-apache

# Install extensions (common for web apps)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache rewrite module
RUN a2enmod rewrite

# Copy your project into Apache root
COPY . /var/www/html/

# Set permissions (optional but useful)
RUN chown -R www-data:www-data /var/www/html

# Expose port
EXPOSE 80
