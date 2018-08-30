# Build from 'base' directory
# docker build -t test -f tags/alpine/Dockerfile .
FROM alpine:3.8
ENV LANG=C.UTF-8 LOCAL=/opt/local APP=/opt/app
CMD ["/sbin/init"]
COPY lib/opt tags/alpine/opt /opt.build/

RUN apk update && apk add bash run-parts && \
  . /opt.build/app/build/bin/build_init
