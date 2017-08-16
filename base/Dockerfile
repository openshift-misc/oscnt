FROM alpine:3.6
CMD ["/opt/entry/cmd"]

RUN apk update && \
  apk add bash rsync dropbear-ssh tzdata py-pip fakeroot logrotate \
      file binutils wget ca-certificates htop && \
  pip install supervisor && \
  ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime && \
  rm -rf /root/.cache /var/cache/apk/* /tmp/* /usr/share/zoneinfo /usr/share/terminfo && \
  rm -rf $(find /usr/lib/python* -name '*.pyc' -o -name '*.pyo') && supervisord -h > /dev/null && supervisorctl -h > /dev/null && \
  find /*bin /usr -type f \( -perm -100 -o -name '*.so*' \) -exec bash -c 'file \{} | grep -q "not stripped" && strip \{}' \; 2>/dev/null && \
  mkdir -p /opt/local && \
  adduser -D -G root -h /opt/local -s /bin/bash user 

COPY opt /opt

RUN chown -R user:root /opt/local && \
  chmod -R g+w /opt/local && \
  chmod g+s $(find /opt/local -type d) && \
  chmod u+x,g+x /opt/entry/cmd $(find /opt/local/entry /opt/local/cron/periodic -type f) && \
  ( cd /opt && tar cfz local.container.tar.gz local ) && \
  ln -sf /opt/local/supervisor/supervisord.conf /etc/ && \
  chmod g+w /etc/passwd

# Keeping user root by default as containers that use this as library
# may need to install additional packages.
#
# Uncomment the next line if you want to use this container directly
#USER user
