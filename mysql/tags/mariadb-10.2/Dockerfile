# Build from 'mysql' directory
# docker build -t oscnt/mysql:mariadb-10.2 -f tags/mariadb-10.2/Dockerfile .
FROM oscnt/base:glibc-16.04
EXPOSE 3306
COPY lib/opt tags/mariadb-10.2/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=mariadb-10.2.19

USER user
