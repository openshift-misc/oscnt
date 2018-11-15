# Build from 'ssh' directory
# docker build -t oscnt/ssh:lamp -f tags/lamp/Dockerfile .
FROM oscnt/lamp:mariadb-10.2-root
EXPOSE 10022
COPY lib/opt tags/lamp/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init --comment=mariadb-10.2.19,php-7.1.24

USER user
