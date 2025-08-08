#!/bin/bash

php -r "file_exists('.env') || copy('.env.sample', '.env');"
composer install
php artisan vendor:publish --tag=themosis --force
php artisan key:generate --ansi
php artisan salts:generate --ansi
php artisan vendor:publish --tag=wp-support --force