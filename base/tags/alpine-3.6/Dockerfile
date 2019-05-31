# Build from 'base' directory
# docker build -t oscnt/base:alpine-3.6 -f tags/alpine-3.6/Dockerfile .
FROM alpine:3.6
ENV LANG=C.UTF-8 LOCAL=/opt/local APP=/opt/app
CMD ["/sbin/init"]
COPY lib/opt tags/alpine-3.6/opt /opt.build/

RUN apk update && apk add bash run-parts && \
  . /opt.build/app/build/bin/build_init
