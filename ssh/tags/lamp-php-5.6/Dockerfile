# Build from 'ssh' directory
# docker build -t oscnt/ssh:lamp-php-5.6 -f tags/lamp-php-5.6/Dockerfile .
FROM oscnt/lamp:php-5.6-root
EXPOSE 10022
COPY lib/opt tags/lamp-php-5.6/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init --comment=php-5.6.40,mariadb-10.2.24

USER user
