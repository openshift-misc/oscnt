# Build from 'php7' directory
# docker build -t test -f tags/php71-odbc-apache/Dockerfile .
FROM oscnt/base:glibc
EXPOSE 1080 1443
COPY lib/opt tags/php71-odbc-apache/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.1.10

USER user
