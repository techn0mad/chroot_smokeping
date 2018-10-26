#!/bin/sh
export WWW_BASE="/var/www"

TARGET="/usr/local/sbin/fping"
ARGS="-v"

FILES="/usr/local/sbin/fping \
       /usr/lib/libc.so.92.5 \
       /usr/libexec/ld.so"

pkg_add -I fping

for file in $FILES
do
  echo ${file}
  tar cf - ${file} | (cd ${WWW_BASE}; tar xf -)
done

chroot -u root ${WWW_BASE} ${TARGET} ${ARGS} 

