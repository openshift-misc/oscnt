FROM oscnt/base
EXPOSE 1080 1443
COPY opt /opt.build

RUN apk update && apk upgrade && \
  apk add git apache2 apache2-ssl apache2-http2 apache2-proxy \
      php5-cli php5-fpm php5-pgsql php5-mysql php5-mysqli php5-sqlite3 \
      php5-pdo_pgsql php5-pdo_mysql php5-pdo_sqlite \
      php5-ctype php5-soap php5-json php5-dom php5-curl php5-xml \
      php5-ldap php5-openssl php5-mcrypt php5-gd php5-opcache && \
  rm -rf /var/cache/apk/* /tmp/* && \
  cp -a /etc/apache2 /etc/php5 /opt/local/ && \
  cp -a /opt.build/* /opt/ && rm -rf /opt.build && \
  ln -s /usr/lib/apache2 /opt/local/apache2/modules && \
  ln -s /usr/lib/php5/modules /opt/local/php5/ && \
  ln -s /opt/app/scripts/php /usr/bin/php && \
  mkdir -p /opt/local/apache2/log && \
  mkdir -p /opt/local/php5/log && \
  PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/app/scripts /opt/local/init /opt/local/cron/periodic && \
  strip_all /*bin /usr /opt/app && \
  allow_group /opt/local && create_local_archive

USER user
