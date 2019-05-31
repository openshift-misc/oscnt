# Build from 'base' directory
# docker build -t oscnt/base:glibc-16.04 -f tags/glibc-16.04/Dockerfile .
FROM oscnt/base:alpine-3.6
COPY lib/opt tags/glibc-16.04/opt /opt.build/

RUN  . /opt/app/build/bin/build_init
