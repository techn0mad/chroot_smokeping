#!/bin/sh
export WWW_BASE="/var/www"

TARGET="/usr/local/bin/rrdtool"
ARGS="--version"

pkg_add -I rrdtool
/usr/local/share/examples/rrdtool/rrdtool-chroot enable

#chroot -u www ${WWW_BASE} /usr/bin/env
#chroot -u root ${WWW_BASE} /sbin/ldconfig /usr/lib /usr/local/lib /usr/libexec /usr/X11R6/lib
#chroot -u www ${WWW_BASE} /sbin/ldconfig -r

chroot -u www ${WWW_BASE} ${TARGET} ${ARGS} 

