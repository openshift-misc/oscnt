# Build from 'ssh' directory
# docker build -t oscnt/ssh:python-3.5 -f tags/python-3.5/Dockerfile .
FROM oscnt/python:3.5-root
EXPOSE 10022
COPY lib/opt tags/python-3.5/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* /opt/app/build/bin/post.d/70-update-libs && \
  . /opt/app/build/bin/build_init --comment=python-3.5

USER user
