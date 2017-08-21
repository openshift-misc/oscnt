# Build from 'base' directory
# docker build -t test -f tags/mysql-5.7/Dockerfile .
FROM oscnt/base:glibc
EXPOSE 3306
COPY lib/opt tags/mysql-5.7/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
