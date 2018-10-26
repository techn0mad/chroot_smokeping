#!/bin/sh
export WWW_BASE="/var/www"

TARGET="/usr/bin/perl"
ARGS="--version"

FILES="/usr/bin/perl \
       /usr/lib/libperl.so.18.1 \
       /usr/lib/libm.so.10.1 \
       /usr/lib/libc.so.92.5 \
       /usr/libexec/ld.so"

for file in $FILES
do
  echo ${file}
  tar cf - ${file} | (cd ${WWW_BASE}; tar xf -)
done

chroot -u www ${WWW_BASE} ${TARGET} ${ARGS} 

