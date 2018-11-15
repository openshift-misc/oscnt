# Build from 'base' directory
# docker build -t oscnt/mysql:mysql-5.7 -f tags/mysql-5.7/Dockerfile .
FROM oscnt/base:glibc-16.04
EXPOSE 3306
COPY lib/opt tags/mysql-5.7/opt /opt.build/

RUN  . /opt/app/build/bin/build_init --comment=mysql-5.7.24

USER user
