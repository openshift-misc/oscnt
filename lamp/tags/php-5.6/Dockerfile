# Build from 'lamp' directory
# docker build -t oscnt/lamp:php-5.6 -f tags/php-5.6/Dockerfile .
FROM oscnt/php5:5.6-root
EXPOSE 3306
COPY lib/opt tags/php-5.6/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-5.6.40,mariadb-10.2.24

USER user
