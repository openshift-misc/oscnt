# Build from 'ssh' directory
# docker build -t oscnt/ssh:lamp-php-7.4 -f tags/lamp-php-7.4/Dockerfile .
FROM oscnt/lamp:php-7.4-root
EXPOSE 10022
COPY lib/opt tags/lamp-php-7.4/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init --comment=php-7.4.0~rc4,mariadb-10.4.10

USER user
