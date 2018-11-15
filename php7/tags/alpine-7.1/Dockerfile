# Build from 'php7' directory
# docker build -t oscnt/php7:alpine-7.1 -f tags/alpine-7.1/Dockerfile .
FROM oscnt/base:alpine-3.7
EXPOSE 1080 1443
COPY lib/opt tags/alpine-7.1/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
