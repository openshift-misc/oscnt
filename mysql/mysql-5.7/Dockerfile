FROM oscnt/glibc
EXPOSE 3306

RUN MYSQL_BIN="https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.19-linux-glibc2.12-x86_64.tar.gz" && \
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
  PATH=/opt/app/scripts:$PATH && export PATH && \
  strip_all /*bin /usr /opt/app/mysql && \
  chownmod /opt/app/mysql && \
  rm -rf /var/cache/apk/* /tmp/* /opt/src /root/.wget-hsts

COPY opt /opt

RUN cd /opt/local/mysql && mkdir data log && ln -s /opt/app/mysql/current app && \
  bash -c 'for d in app/{lib,share,support-files};do ln -s $d;done' && \
  if [ -d app/scripts ];then ln -s app/scripts;fi && \
  cd /opt/local/mysql/app/bin && \
  for f in *;do ln -s mysql-client /opt/local/mysql/bin/$f; ln -s /opt/local/mysql/bin/$f /usr/bin/; done && \
  PATH=/opt/app/scripts:$PATH && export PATH && \
  set_executable /opt/local/mysql/bin/mysql-server /opt/local/mysql/bin/mysql-client /opt/local/entry /opt/local/cron/periodic && \
  chownmod /opt/local && create_local_archive

USER user
