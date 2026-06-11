FROM cgr.dev/chainguard/wordpress:latest-dev
ARG UID=1000

USER root
RUN cp -r /usr/src/wordpress/. /var/www/html/ && \
    cp /var/www/html/wp-config-docker.php /var/www/html/wp-config.php && \
    cp -r /usr/src/wordpress/wp-content /usr/src/wp-content-default
RUN addgroup wordpress && adduser -SD -u "$UID" -s /bin/bash wordpress wordpress
RUN chown -R wordpress:wordpress /var/www/html /usr/src/wp-content-default

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

USER wordpress
ENTRYPOINT ["/docker-entrypoint.sh"]
