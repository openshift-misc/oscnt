# Build from 'php5' directory
# docker build -t oscnt/php5:alpine-apache -f tags/alpine-apache/Dockerfile .
FROM oscnt/base:alpine-3.6
EXPOSE 1080 1443
COPY lib/opt tags/alpine-apache/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
