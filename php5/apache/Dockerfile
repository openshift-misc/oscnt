FROM oscnt/base
EXPOSE 1080 1443

RUN apk update && apk upgrade && \
  apk add git apache2 apache2-ssl apache2-http2 apache2-proxy \
      php5-cli php5-fpm php5-pdo_pgsql php5-pdo_mysql php5-pdo_sqlite \
      php5-pgsql php5-mysql php5-mysqli php5-sqlite3 php5-odbc \
      php5-ctype php5-soap php5-json php5-dom php5-curl php5-xml \
      php5-ldap php5-openssl php5-mcrypt php5-gd php5-opcache && \
  /opt/app/scripts/strip_all /*bin /usr && \
  rm -rf /var/cache/apk/* /tmp/* && \
  cp -a /etc/apache2 /etc/php5 /opt/local/

COPY opt /opt

RUN  ln -s /usr/lib/apache2 /opt/local/apache2/modules && \
  PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/entry /opt/app/scripts /opt/local/entry /opt/local/cron/periodic && \
  chownmod /opt/local && create_local_archive && \
  ln -s /opt/app/scripts/php /usr/bin/php

USER user
