#!/bin/bash

set -e

env

if [[ -n "$1" ]]; then
    exec "$@"
else
    composer install 
    wait-for-it db:3306 -t 45
    php artisan migrate --database=mysql #cần ấn yes
    chown -R www-data:www-data storage
    php artisan key:generate #cần ấn yes
    exec apache2-foreground
fi
