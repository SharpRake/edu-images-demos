FROM cgr.dev/chainguard/wordpress:latest-dev
USER root
RUN cp -r /usr/src/wordpress/. /var/www/html/ && \
    cp /var/www/html/wp-config-docker.php /var/www/html/wp-config.php && \
    chown -R php:php /var/www/html
USER php
