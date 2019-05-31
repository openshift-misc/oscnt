# Build from 'base' directory
# docker build -t oscnt/base:glibc-18.04 -f tags/glibc-18.04/Dockerfile .
FROM oscnt/base:alpine-3.9
COPY lib/opt tags/glibc-18.04/opt /opt.build/

RUN  . /opt/app/build/bin/build_init
