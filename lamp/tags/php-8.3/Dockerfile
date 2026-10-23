# Build from 'lamp' directory
# docker build -t oscnt/lamp:php-8.3 -f tags/php-8.3/Dockerfile .
FROM oscnt/php8:8.3-root
EXPOSE 3306
COPY lib/opt tags/php-8.3/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-8.3.36,mariadb-10.3.39

USER user
