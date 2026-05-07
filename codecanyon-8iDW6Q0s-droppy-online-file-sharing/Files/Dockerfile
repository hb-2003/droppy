FROM php:8.3-fpm

# Install dependencies
RUN apt-get update && apt-get install -y \
    nginx \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    curl \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd mysqli pdo pdo_mysql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy nginx config
COPY docker/nginx.conf /etc/nginx/sites-available/default

# Copy app files
COPY . /var/www/droppy

# Set permissions
RUN chown -R www-data:www-data /var/www/droppy \
    && chmod -R 755 /var/www/droppy \
    && chmod -R 777 /var/www/droppy/application/cache \
    && chmod -R 777 /var/www/droppy/application/logs \
    && chmod -R 777 /var/www/droppy/uploads

# Copy startup script
COPY docker/start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]
