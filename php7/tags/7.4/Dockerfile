# Build from 'php7' directory
# docker build -t oscnt/php7:7.4 -f tags/7.4/Dockerfile .
FROM oscnt/base:glibc-18.04
EXPOSE 1080 1443
COPY lib/opt tags/7.4/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.4.0~rc4

USER user
