# Build from 'lamp' directory
# docker build -t oscnt/lamp:php-7.3 -f tags/php-7.3/Dockerfile .
FROM oscnt/php7:7.3-root
EXPOSE 3306
COPY lib/opt tags/php-7.3/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.3.11,mariadb-10.3.20

USER user
