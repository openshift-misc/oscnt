# Build from 'php7' directory
# docker build -t oscnt/php7:7.1 -f tags/7.1/Dockerfile .
FROM oscnt/base:glibc-16.04
EXPOSE 1080 1443
COPY lib/opt tags/7.1/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.1.24

USER user
