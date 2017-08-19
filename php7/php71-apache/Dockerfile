FROM oscnt/base
EXPOSE 1080 1443
COPY opt /opt.build

RUN apk update && apk upgrade && \
  apk add git apache2 apache2-ssl apache2-http2 apache2-proxy \
      php7 php7-fpm php7-pgsql php7-mysqli php7-sqlite3 \
      php7-pdo_pgsql php7-pdo_mysql php7-pdo_sqlite \
      php7-ctype php7-soap php7-json php7-dom php7-curl php7-xml \
      php7-ldap php7-openssl php7-mcrypt php7-gd php7-opcache && \
  rm -rf /var/cache/apk/* /tmp/* && \
  cp -a /etc/apache2 /etc/php7 /opt/local/ && \
  mv /opt/local/php7 /opt/local/php71 && \
  cp -a /opt.build/* /opt/ && rm -rf /opt.build && \
  ln -s /usr/lib/apache2 /opt/local/apache2/modules && \
  mkdir -p /opt/app/apache2/bin && \
  ln -s /usr/sbin/httpd /opt/app/apache2/bin/ && \
  ln -s /usr/lib/php7/modules /opt/local/php71/ && \
  mkdir -p /opt/app/php71/bin /opt/local/php71/bin && \
  ln -s /usr/sbin/php-fpm7 /opt/app/php71/bin/php-fpm71 && \
  ln -s /usr/bin/php7 /opt/app/php71/bin/php71 && \
  ln -sf /opt/app/php71/bin/php /usr/bin/php && \
  mkdir -p /opt/local/apache2/log && \
  mkdir -p /opt/local/php71/log && \
  PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/app/php71/bin /opt/local/init /opt/local/cron/periodic && \
  strip_all /*bin /usr /opt/app && \
  allow_group /opt/local && create_local_archive

USER user
