FROM alpine:3.6
CMD ["/opt/entry/cmd"]

RUN apk update && \
  apk add bash rsync openssh-client tzdata py-pip fakeroot logrotate \
      htop git wget curl && \
  pip install supervisor && \
  rm -rf /root/.cache /var/cache/apk/* /tmp/* && mkdir -p /opt/local && \
  adduser -D -G root -h /opt/local -s /bin/bash user 

COPY opt /opt

RUN chown -R user:root /opt/local && \
  chmod -R g+w,g+s /opt/local && \
  chmod -R u+x,g+x,o+x /opt/entry/cmd $(find /opt/local/entry -type f) $(find /opt/local/cron/periodic -type f) && \
  ( cd /opt && tar cfz local.container.tar.gz local ) && \
  chmod g+w /etc/passwd && \
  ln -sf /opt/local/supervisor/supervisord.conf /etc/ && \
  ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime

# Keeping user root by default as containers that use this as library
# may need to install additional packages.
#
# Uncomment the next line if you want to use this container directly
#USER user
