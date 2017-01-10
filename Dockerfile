FROM dockage/alpine-runit:3.5-3
MAINTAINER Mohammad Abdoli Rad <m.abdolirad@gmail.com>

ENV DOCKAGE_WEBROOT_DIR=/var/www \
    DOCKAGE_DATA_DIR=/data \
    DOCKAGE_ETC_DIR=/etc/dockage \
    DOCKAGE_LOG_DIR=/var/log

ADD ./assets ${DOCKAGE_ETC_DIR}

RUN apk update \
    && apk --no-cache add nginx php5-fpm \
    && runit-enable-service nginx \
    && runit-enable-service php-fpm \
    && chown nginx:nginx /var/www \
    && mv ${DOCKAGE_ETC_DIR}/sbin/* /sbin \
    && rm -rf /var/cache/apk/* ${DOCKAGE_ETC_DIR}/sbin /var/www/*

EXPOSE 80/tcp 443/tcp

VOLUME ["$DOCKAGE_WEBROOT_DIR", "$DOCKAGE_DATA_DIR", "$DOCKAGE_LOG_DIR"]
WORKDIR ${DOCKAGE_WEBROOT_DIR}

ENTRYPOINT ["/sbin/entrypoint"]
CMD ["app:start"]