FROM oscnt/base
ENV LANG=C.UTF-8
COPY opt /opt

RUN PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/app/build/bin && \
  /opt/app/build/bin/run && \
  strip_all /*bin /usr /opt/app && \
  allow_group /opt/local && create_local_archive
