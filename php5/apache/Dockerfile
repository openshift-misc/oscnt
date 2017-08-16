FROM oscnt/base
EXPOSE 1080 1443

RUN apk update && apk add apache2 apache2-ssl apache2-http2 apache2-proxy \
      php5-cli php5-fpm php5-pdo_pgsql php5-pdo_mysql php5-pdo_sqlite \
      php5-pgsql php5-mysql php5-mysqli php5-sqlite3 php5-odbc \
      php5-ctype php5-soap php5-json php5-dom php5-curl php5-xml \
      php5-ldap php5-openssl php5-mcrypt php5-gd php5-opcache && \
  rm -rf /var/cache/apk/* /tmp/* && \
  cp -a /etc/apache2 /etc/php5 /opt/local

COPY opt /opt

RUN  ln -s /usr/lib/apache2 /opt/local/apache2/modules && \
  find /opt/local \( ! -user user -o ! -group root \) -a \( -type d -o -type f \) -exec chown user:root \{} \; && \
  find /opt/local ! -perm -g=ws -exec chmod g+w,g+s \{} \; && \
  chmod u+x,g+x,o+x $(find /opt/local/entry -type f) $(find /opt/local/cron/periodic -type f) && \
  ( cd /opt && tar cfz local.container.tar.gz local ) && \
  ln -s php5 /usr/bin/php

USER user
