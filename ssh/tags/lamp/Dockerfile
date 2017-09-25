# Build from 'ssh' directory
# docker build -t test -f tags/lamp/Dockerfile .
FROM oscnt/lamp:mariadb-10.2-root
EXPOSE 10022
COPY lib/opt tags/lamp/opt /opt.build/

RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init

USER user
