# Build from 'kafka' directory
# docker build -t oscnt/kafka:2.0 -f tags/2.0/Dockerfile .
FROM oscnt/java:jdk-1.8-root
EXPOSE 9092 2181 2888 3888
COPY lib/opt tags/2.0/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* && \
  . /opt/app/build/bin/build_init --comment=kafka-2.0.1

USER user
