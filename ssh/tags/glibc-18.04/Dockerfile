# Build from 'ssh' directory
# docker build -t oscnt/ssh:glibc-18.04 -f tags/glibc-18.04/Dockerfile .
FROM oscnt/base:glibc-18.04
EXPOSE 10022
COPY lib/opt tags/glibc-18.04/opt /opt.build/

# You can force docker rebuild by changing 'comment'
RUN  . /opt/app/build/bin/build_init --comment=oscnt/ssh:glibc-18.04

USER user
