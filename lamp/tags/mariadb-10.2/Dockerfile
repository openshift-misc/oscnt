# Build from 'lamp' directory
# docker build -t test -f tags/mariadb-10.2/Dockerfile .
FROM oscnt/php7:php71-odbc-root
EXPOSE 3306
COPY lib/opt tags/mariadb-10.2/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
