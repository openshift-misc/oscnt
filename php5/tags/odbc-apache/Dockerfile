# Build from 'php5' directory
# docker build -t oscnt/php5:odbc-apache -f tags/odbc-apache/Dockerfile .
FROM oscnt/base:glibc-16.04
EXPOSE 1080 1443
COPY lib/opt tags/odbc-apache/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php5.6-5.6.38-3+ubuntu16.04.1+deb.sury.org+1

USER user
