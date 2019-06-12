# Build from 'php5' directory
# docker build -t oscnt/php5:5.6 -f tags/5.6/Dockerfile .
FROM oscnt/base:glibc-16.04
EXPOSE 1080 1443
COPY lib/opt tags/5.6/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-5.6.40

USER user
