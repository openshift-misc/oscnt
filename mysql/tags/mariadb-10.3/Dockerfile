# Build from 'mysql' directory
# docker build -t oscnt/mysql:mariadb-10.3 -f tags/mariadb-10.3/Dockerfile .
FROM oscnt/base:glibc-18.04
EXPOSE 3306
COPY lib/opt tags/mariadb-10.3/opt /opt.build/

# You can force docker rebuild by changing 'comment'
RUN  . /opt/app/build/bin/build_init --comment=mariadb-10.3.10

USER user
