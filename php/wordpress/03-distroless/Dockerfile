FROM cgr.dev/chainguard/wordpress:latest-dev AS builder

#copy wp-content folder
COPY ./wp-content /usr/src/wordpress/wp-content

USER root
#copy WordPress source to document root and set up config
RUN cp -r /usr/src/wordpress/. /var/www/html/ && \
    cp /var/www/html/wp-config-docker.php /var/www/html/wp-config.php

FROM cgr.dev/chainguard/wordpress:latest

COPY --from=builder --chown=php:php /var/www/html /var/www/html
