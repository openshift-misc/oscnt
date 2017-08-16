FROM oscnt/glibc
EXPOSE 3306

RUN MYSQL_BIN="https://downloads.mariadb.org/f/mariadb-10.2.7/bintar-linux-glibc_214-x86_64/mariadb-10.2.7-linux-glibc_214-x86_64.tar.gz" && \
  PKGS=" \
    http://mirrors.kernel.org/ubuntu/pool/main/liba/libaio/libaio1_0.3.110-2_amd64.deb \
    http://mirrors.kernel.org/ubuntu/pool/main/n/numactl/libnuma1_2.0.11-1ubuntu1_amd64.deb \
    " && \
  apk update && apk add dpkg tar && \
  mkdir -p /opt/local/mysql /opt/app/mysql /opt/src && \
  cd /opt/src && wget $PKGS && \
  for pkg in *.deb;do dpkg -x $pkg .;done && \
  cp -a $(find lib usr -name 'l*.so*') /usr/lib/x86_64-linux-gnu/ && \
  ldconfig && \
  cd /opt/src && wget $MYSQL_BIN && \
  cd /opt/app/mysql && tar xfz /opt/src/*-*.tar.gz && ln -s *-* current && \
  cd current && \
  bash -c 'rm -rf \
    {data,man,sql-bench,support-files,docs,include,mysql-test,[A-Z]*} \
    bin/{*embed*,ga*,wsrep*,*debug} lib/{*.a,lib*,galera,mecab} \
    lib/plugin/{*spider*} bin/{myisam*,aria*,inno*,*slap,*test,*stream} \
    $(ls -d share/*|egrep -v "err|english|\.sql") \
    ' && \
  find /*bin /usr /opt/app -type f \( -perm -100 -o -name '*.so*' \) -exec bash -c 'file \{} | grep -q "not stripped" && strip \{}' \; 2>/dev/null && \
  rm -rf /var/cache/apk/* /tmp/* /opt/src /root/.wget-hsts && \
  chown -R user:root /opt/app/mysql && \
  chmod -R g+w /opt/app/mysql && \
  chmod g+s $(find /opt/app/mysql -type d)

COPY opt /opt

RUN cd /opt/local/mysql && mkdir data log && ln -s /opt/app/mysql/current app && \
  bash -c 'for d in app/{lib,share,support-files};do ln -s $d;done' && \
  if [ -d app/scripts ];then ln -s app/scripts;fi && \
  cd /opt/local/mysql/app/bin && \
  for f in *;do ln -s mysql-client /opt/local/mysql/bin/$f; ln -s /opt/local/mysql/bin/$f /usr/bin/; done && \
  find /opt/local \( ! -user user -o ! -group root \) -a \( -type d -o -type f \) -exec chown user:root \{} \; && \
  find /opt/local ! -perm -g=s -type d -exec chmod g+s \{} \; && \
  find /opt/local ! -perm -g=w -exec chmod g+w \{} \; && \
  chmod -R u+x,g+x /opt/local/mysql/bin/mysql-server /opt/local/mysql/bin/mysql-client $(find /opt/local/entry /opt/local/cron/periodic ! -perm -110 -type f) && \
  cd /opt && tar cfz local.container.tar.gz local

USER user
