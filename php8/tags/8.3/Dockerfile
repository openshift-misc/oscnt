# Build from 'php8' directory
# docker build -t oscnt/php8:8.3 -f tags/8.3/Dockerfile .
FROM oscnt/base:glibc-18.04
EXPOSE 1080 1443
COPY lib/opt tags/8.3/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=php-8.3.36

USER user
