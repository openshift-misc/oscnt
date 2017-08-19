FROM oscnt/php7:php71-root
EXPOSE 3306
COPY opt /opt

RUN PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/build /opt/local/mysql/bin /opt/local/entry && \
  . /opt/build.env && run-parts /opt/build && \
  strip_all /*bin /usr /opt/app && \
  chownmod /opt/local && create_local_archive

USER user
