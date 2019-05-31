# Build from 'ssh' directory
# docker build -t oscnt/ssh:lamp-php5 -f tags/lamp-php5/Dockerfile .
FROM oscnt/lamp:php5-mariadb-10.2-root
EXPOSE 10022
COPY lib/opt tags/lamp-php5/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init --comment=mariadb-10.2.19

USER user
