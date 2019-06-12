# Build from 'lamp' directory
# docker build -t oscnt/lamp:php-7.1 -f tags/php-7.1/Dockerfile .
FROM oscnt/php7:7.1-root
EXPOSE 3306
COPY lib/opt tags/php-7.1/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.1.29,mariadb-10.2.24

USER user
