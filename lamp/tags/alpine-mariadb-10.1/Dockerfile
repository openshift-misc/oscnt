# Build from 'lamp' directory
# docker build -t test -f tags/alpine-mariadb-10.1/Dockerfile .
FROM oscnt/php7:php71-root
EXPOSE 3306
COPY lib/opt tags/alpine-mariadb-10.1/opt /opt.build/

RUN  . /opt/app/build/bin/build_init

USER user
