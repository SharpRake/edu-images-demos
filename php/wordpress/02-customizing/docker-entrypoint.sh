#!/bin/sh
# Populate wp-content from defaults on first run (when themes directory is absent)
if [ ! -d /var/www/html/wp-content/themes ]; then
    cp -r /usr/src/wp-content-default/. /var/www/html/wp-content/
fi
exec php-fpm
