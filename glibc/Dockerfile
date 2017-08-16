FROM oscnt/base
EXPOSE 3306

RUN PKGS=" \
    http://mirrors.kernel.org/ubuntu/pool/main/g/glibc/libc6_2.23-0ubuntu9_amd64.deb \
    http://mirrors.kernel.org/ubuntu/pool/main/g/glibc/libc-bin_2.23-0ubuntu9_amd64.deb \
    http://mirrors.kernel.org/ubuntu/pool/main/g/gccgo-6/libgcc1_6.0.1-0ubuntu1_amd64.deb \
    http://mirrors.kernel.org/ubuntu/pool/main/g/gcc-5/libstdc++6_5.4.0-6ubuntu1~16.04.4_amd64.deb \
    http://mirrors.kernel.org/ubuntu/pool/main/n/ncurses/libncurses5_6.0+20160213-1ubuntu1_amd64.deb \
    http://mirrors.kernel.org/ubuntu/pool/main/n/ncurses/libtinfo5_6.0+20160625-1ubuntu1_amd64.deb \
    " && \
  apk update && apk add tar dpkg file binutils && \
  mkdir -p /opt/src /usr/lib/x86_64-linux-gnu /lib64 && \
  cd /opt/src && wget $PKGS && \
  for pkg in *.deb;do dpkg -x $pkg .;done && \
  cp -a $(find lib usr -name 'l*.so*') /usr/lib/x86_64-linux-gnu/ && \
  tar cf - etc/ld* sbin usr/sbin usr/bin usr/lib/locale/C.UTF-8 | ( cd / && tar xvf - ) && \
  cp usr/share/libc-bin/nsswitch.conf /etc/ && \
  ln -sf /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 /lib64/ && \
  ln -s /usr/lib/x86_64-linux-gnu /opt/glibc && \
  ldconfig && \
  /opt/app/scripts/strip_all /*bin /usr && \
  rm -rf /var/cache/apk/* /tmp/* /opt/src /root/.wget-hsts

ENV LANG=C.UTF-8
