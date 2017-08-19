FROM oscnt/base
ENV LANG=C.UTF-8
COPY opt /opt

RUN PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/build && \
  . /opt/build.env && run-parts /opt/build && \
  strip_all /*bin /usr /opt/app && \
  chownmod /opt/local && create_local_archive
