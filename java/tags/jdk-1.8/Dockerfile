# Build from 'java' directory
# docker build -t oscnt/java:jdk-1.8 -f tags/jdk-1.8/Dockerfile .
FROM oscnt/ssh:glibc-18.04-root
COPY lib/opt tags/jdk-1.8/opt /opt.build/

# Force docker rebuild
RUN  . /opt/app/build/bin/build_init --comment=jdk-1.8

USER user
