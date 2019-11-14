# Build from 'lamp' directory
# docker build -t oscnt/lamp:php-7.4 -f tags/php-7.4/Dockerfile .
FROM oscnt/php7:7.4-root
EXPOSE 3306
COPY lib/opt tags/php-7.4/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.4.0~rc4,mariadb-10.4.10

USER user
