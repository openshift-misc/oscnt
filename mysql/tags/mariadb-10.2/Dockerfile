# Build from 'mysql' directory
# docker build -t test -f tags/mariadb-10.2/Dockerfile .
FROM oscnt/base:glibc
EXPOSE 3306
COPY lib/opt tags/mariadb-10.2/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=mariadb-10.2.9

USER user
