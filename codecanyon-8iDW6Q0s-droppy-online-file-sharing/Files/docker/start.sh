#!/bin/bash

# Update database config with env values
sed -i "s/'hostname' => '.*'/'hostname' => '${DB_HOST}'/" /var/www/droppy/application/config/database.php
sed -i "s/'username' => '.*', \/\/ The username/'username' => '${DB_USERNAME}', \/\/ The username/" /var/www/droppy/application/config/database.php
sed -i "s/'password' => '.*', \/\/ The password/'password' => '${DB_PASSWORD}', \/\/ The password/" /var/www/droppy/application/config/database.php

# Update base_url
sed -i "s|'base_url' => '.*'|'base_url' => '${APP_URL}/'|" /var/www/droppy/application/config/config.php

# Start PHP-FPM
php-fpm -D

# Start Nginx
nginx -g 'daemon off;'
