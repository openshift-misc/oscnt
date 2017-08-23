# Build from 'lamp' directory
# docker build -t test -f tags/php5-mariadb-10.2/Dockerfile .
FROM oscnt/php5:odbc-root
EXPOSE 3306
COPY lib/opt tags/php5-mariadb-10.2/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
