# Build from 'php5' directory
# docker build -t test -f tags/odbc-apache/Dockerfile .
FROM oscnt/base:glibc
EXPOSE 1080 1443
COPY lib/opt tags/odbc-apache/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php5.6-5.6.31-6+ubuntu16.04.1+deb.sury.org+1

USER user
