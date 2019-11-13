# Build from 'ssh' directory
# docker build -t oscnt/ssh:lamp-php-7.3 -f tags/lamp-php-7.3/Dockerfile .
FROM oscnt/lamp:php-7.3-root
EXPOSE 10022
COPY lib/opt tags/lamp-php-7.3/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init --comment=php-7.3.11,mariadb-10.3.20

USER user
