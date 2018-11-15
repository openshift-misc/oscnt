# Build from 'kafka' directory
# docker build -t oscnt/kafka:1.0 -f tags/1.0/Dockerfile .
FROM oscnt/java:jdk-1.8-root
EXPOSE 9092 2181 2888 3888
COPY lib/opt tags/1.0/opt /opt.build/

# Force docker rebuild
RUN  rm -f /opt/app/build/bin/pre.d/* && \
  . /opt/app/build/bin/build_init --comment=kafka-1.0.2

USER user
