# Build from 'php7' directory
# docker build -t test -f tags/php71-apache/Dockerfile .
FROM oscnt/base:alpine
EXPOSE 1080 1443
COPY lib/opt tags/php71-apache/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
