# Build from 'lamp' directory
# docker build -t oscnt/lamp:mariadb-10.2 -f tags/mariadb-10.2/Dockerfile .
FROM oscnt/php7:7.1-root
EXPOSE 3306
COPY lib/opt tags/mariadb-10.2/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.1.24,mariadb-10.2.19

USER user
