# Build from 'base' directory
# docker build -t test -f tags/glibc/Dockerfile .
FROM oscnt/base:alpine
ENV LANG=C.UTF-8
COPY lib/opt tags/glibc/opt /opt.build/

RUN  . /opt/app/build/bin/build_init
