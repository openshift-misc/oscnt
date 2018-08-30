# Build from 'base' directory
# docker build -t test -f tags/glibc-ubuntu-18.04/Dockerfile .
FROM oscnt/base:alpine
COPY lib/opt tags/glibc-ubuntu-18.04/opt /opt.build/

RUN  . /opt/app/build/bin/build_init
