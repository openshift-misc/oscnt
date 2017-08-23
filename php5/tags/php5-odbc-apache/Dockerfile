# Build from 'php5' directory
# docker build -t test -f tags/php5-odbc-apache/Dockerfile .
FROM oscnt/base:glibc
EXPOSE 1080 1443
COPY lib/opt tags/php5-odbc-apache/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
