# Build from 'ssh' directory
# docker build -t test -f tags/lamp-php5/Dockerfile .
FROM oscnt/lamp:php5-root
EXPOSE 10022
COPY lib/opt tags/lamp-php5/opt /opt.build/

RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init

USER user
