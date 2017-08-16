FROM oscnt/glibc
EXPOSE 3306

RUN MYSQL_BIN="https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.19-linux-glibc2.12-x86_64.tar.gz" && \
  PKGS=" \
    http://mirrors.kernel.org/ubuntu/pool/main/liba/libaio/libaio1_0.3.110-2_amd64.deb \
    http://mirrors.kernel.org/ubuntu/pool/main/n/numactl/libnuma1_2.0.11-1ubuntu1_amd64.deb \
    " && \
  apk update && apk add tar dpkg file binutils && \
  mkdir -p /opt/local/mysql /opt/app/mysql /opt/src && \
  cd /opt/src && wget $PKGS && \
  for pkg in *.deb;do dpkg -x $pkg .;done && \
  cp -a $(find lib usr -name 'l*.so*') /usr/lib/x86_64-linux-gnu/ && \
  ldconfig && \
  cd /opt/src && wget $MYSQL_BIN && \
  cd /opt/app/mysql && tar xfz /opt/src/*-*.tar.gz && ln -s *-* current && \
  bash -c 'rm -rf current/bin/{*embed*,ga*,wsrep*,*debug} current/lib/{*.a,lib*,galera,mecab} current/{data,man,sql-bench,include,mysql-test,[A-Z]*}' && \
  strip $(find current/lib -type f -name '*.so*') $(find current/bin -type f -perm -u=x) 2>/dev/null || true && \ 
  rm -rf /var/cache/apk/* /tmp/* /opt/src /root/.wget-hsts && \
  chown -R user:root /opt/app/mysql && \
  chmod -R g+w,g+s /opt/app/mysql

COPY opt /opt

RUN cd /opt/local/mysql && mkdir data log && ln -s /opt/app/mysql/current app && \
  bash -c 'for d in app/{lib,share,support-files};do ln -s $d;done' && \
  if [ -d app/scripts ];then ln -s app/scripts;fi && \
  cd /opt/local/mysql/app/bin && \
  for f in *;do ln -s mysql-client /opt/local/mysql/bin/$f; ln -s /opt/local/mysql/bin/$f /usr/bin/; done && \
  find /opt/local \( ! -user user -o ! -group root \) -a \( -type d -o -type f \) -exec chown user:root \{} \; && \
  find /opt/local ! -perm -g=ws -exec chmod g+w,g+s \{} \; && \
  chmod -R u+x,g+x,o+x /opt/local/mysql/bin/mysql-server /opt/local/mysql/bin/mysql-client $(find /opt/local/entry -type f) $(find /opt/local/cron/periodic -type f) && \
  cd /opt && tar cfz local.container.tar.gz local

USER user
