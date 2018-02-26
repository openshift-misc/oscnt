# Build from 'lamp' directory
# docker build -t test -f tags/mariadb-10.2/Dockerfile .
FROM oscnt/php7:php71-odbc-root
EXPOSE 3306
COPY lib/opt tags/mariadb-10.2/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.1.10,mariadb-10.2.9

USER user
