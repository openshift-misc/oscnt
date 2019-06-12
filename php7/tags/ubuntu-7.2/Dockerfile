# Build from 'php7' directory
# docker build -t oscnt/php7:ubuntu-7.2 -f tags/ubuntu-7.2/Dockerfile .
FROM oscnt/base:ubuntu-18.04
EXPOSE 1080 1443
COPY lib/opt tags/ubuntu-7.2/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-7.2.12

USER user
