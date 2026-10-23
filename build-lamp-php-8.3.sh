#!/bin/bash -e
# Build oscnt/ssh:lamp-php-8.3 and the images below it.
# Intermediate images also get a '-root' tag (same image without 'USER user'),
# which the next layer builds FROM.
cd "$(dirname "$0")"

build() {
  local dir=$1 tag=$2 file=$3 root=$4
  if [ -n "${root}" ]; then
    (cd ${dir} && grep -v '^USER user' ${file} | docker build -t ${tag}-root -f - .)
  fi
  (cd ${dir} && docker build -t ${tag} -f ${file} .)
}

build base oscnt/base:alpine-3.10 tags/alpine-3.10/Dockerfile
build base oscnt/base:glibc-18.04 tags/glibc-18.04/Dockerfile
build php8 oscnt/php8:8.3 tags/8.3/Dockerfile root
build lamp oscnt/lamp:php-8.3 tags/php-8.3/Dockerfile root
build ssh oscnt/ssh:lamp-php-8.3 tags/lamp-php-8.3/Dockerfile
