# Build from 'php5' directory
# docker build -t test -f tags/apache/Dockerfile .
FROM oscnt/base:alpine
EXPOSE 1080 1443
COPY lib/opt tags/apache/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
