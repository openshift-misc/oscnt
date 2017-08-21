# Build from 'base' directory
# docker build -t test -f tags/alpine/Dockerfile .
FROM alpine:3.6
CMD ["/sbin/init"]
COPY lib/opt tags/alpine/opt /opt.build/

RUN apk update && apk add bash run-parts && \
  . /opt.build/app/build/bin/build_init
