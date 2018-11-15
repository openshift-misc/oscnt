# Build from 'ssh' directory
# docker build -t oscnt/ssh:glibc-18.04 -f tags/glibc-18.04/Dockerfile .
FROM oscnt/base:glibc-18.04
EXPOSE 10022
COPY lib/opt tags/glibc-18.04/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=oscnt/ssh:glibc

USER user
