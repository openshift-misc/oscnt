# Build from 'mysql' directory
# docker build -t test -f tags/mariadb-10.2/Dockerfile .
FROM oscnt/base:glibc
EXPOSE 3306
COPY lib/opt tags/mariadb-10.2/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
