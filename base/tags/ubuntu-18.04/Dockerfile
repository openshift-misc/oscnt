# Build from 'base' directory
# docker build -t oscnt/base:ubuntu-18.04 -f tags/ubuntu-18.04/Dockerfile .
FROM ubuntu:18.04
ENV LANG=C.UTF-8 LOCAL=/opt/local APP=/opt/app
CMD ["/sbin/init"]
COPY lib/opt tags/ubuntu-18.04/opt /opt.build/

RUN . /opt.build/app/build/bin/build_init
