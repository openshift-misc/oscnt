FROM oscnt/base:glibc
EXPOSE 1080 1443
COPY opt /opt

RUN PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/app/build/bin /opt/local/init /opt/app/php71/bin /opt/local/cron/periodic && \
  /opt/app/build/bin/run && \
  strip_all /*bin /usr /opt/app && \
  allow_group /opt/local && create_local_archive

USER user
