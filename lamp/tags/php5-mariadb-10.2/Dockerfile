# Build from 'lamp' directory
# docker build -t test -f tags/php5-mariadb-10.2/Dockerfile .
FROM oscnt/php5:odbc-root
EXPOSE 3306
COPY lib/opt tags/php5-mariadb-10.2/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=mariadb-10.2.9

USER user
