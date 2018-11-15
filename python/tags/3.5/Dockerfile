# Build from 'python' directory
# docker build -t oscnt/python:3.5 -f tags/3.5/Dockerfile .
FROM oscnt/base:glibc-18.04
COPY lib/opt tags/3.5/opt /opt.build/

# You can force docker rebuild by changing 'comment'
RUN  . /opt/app/build/bin/build_init --comment=python-3.5 && \
  rm -f /opt/app/build/bin/pre.d/*
USER user
