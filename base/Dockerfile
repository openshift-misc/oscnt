FROM alpine:3.6
CMD ["/opt/entry/cmd"]
COPY opt /opt

RUN apk update && apk upgrade && \
  apk add bash rsync dropbear-ssh tzdata py-pip fakeroot logrotate \
      file binutils wget ca-certificates htop && \
  pip install supervisor && \
  cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime && apk del tzdata && \
  rm -rf /root/.cache /var/cache/apk/* /tmp/* /usr/share/terminfo && \
  rm -rf $(find /usr/lib/python* -name '*.pyc' -o -name '*.pyo') && supervisord -h > /dev/null && supervisorctl -h > /dev/null && \
  ln -sf /opt/local/supervisor/supervisord.conf /etc/ && \
  adduser -D -G root -h /opt/local -s /bin/bash user && \
  chmod g+w /etc/passwd && \
  chmod u+x,g+x /opt/app/scripts/* && \
  PATH=/opt/app/scripts:$PATH && export PATH && \
  strip_all /*bin /usr && chownmod /opt/local && \
  set_executable /opt/entry /opt/local/entry /opt/local/cron/periodic && \
  create_local_archive 

# Keeping user root by default as containers that use this as library
# may need to install additional packages.
#
# Uncomment the next line if you want to use this container directly
#USER user
