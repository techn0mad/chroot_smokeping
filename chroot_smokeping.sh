#!/bin/sh
export WWW_BASE="/var/www"
#export PERL_DL_DEBUG=4

TARGET="/usr/local/bin/smokeping"
ARGS="--debug"

FILES="/usr/local/bin/smokeping \
/etc/smokeping \
/etc/resolv.conf \
/usr/libdata/perl5/strict.pm \
/usr/libdata/perl5/encoding/warnings.pm \
/usr/libdata/perl5/warnings.pm \
/usr/libdata/perl5/FindBin.pm \
/usr/libdata/perl5/Carp.pm \
/usr/libdata/perl5/Exporter.pm \
/usr/libdata/perl5/amd64-openbsd/Cwd.pm \
/usr/libdata/perl5/vars.pm \
/usr/libdata/perl5/warnings/register.pm \
/usr/libdata/perl5/File/Basename.pm \
/usr/libdata/perl5/amd64-openbsd/File/Spec.pm \
/usr/libdata/perl5/amd64-openbsd/File/Spec/Unix.pm \
/usr/libdata/perl5/constant.pm \
/usr/libdata/perl5/amd64-openbsd/lib.pm \
/usr/libdata/perl5/amd64-openbsd/Config.pm \
/usr/local/lib/Smokeping.pm \
/usr/local/libdata/perl5/site_perl/CGI.pm \
/usr/libdata/perl5/if.pm \
/usr/libdata/perl5/deprecate.pm \
/usr/local/libdata/perl5/site_perl/CGI/Util.pm \
/usr/libdata/perl5/base.pm \
/usr/libdata/perl5/Getopt/Long.pm \
/usr/libdata/perl5/overload.pm \
/usr/libdata/perl5/overloading.pm \
/usr/libdata/perl5/Exporter/Heavy.pm \
/usr/libdata/perl5/base.pm \
/usr/libdata/perl5/Pod/Usage.pm \
/usr/libdata/perl5/Pod/Text.pm \
/usr/libdata/perl5/amd64-openbsd/Encode.pm \
/usr/libdata/perl5/XSLoader.pm \
/usr/libdata/perl5/amd64-openbsd/Encode/Alias.pm \
/usr/libdata/perl5/bytes.pm \
/usr/libdata/perl5/amd64-openbsd/DynaLoader.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Encode/Encode.so \
/usr/libdata/perl5/amd64-openbsd/Encode/Config.pm \
/usr/libdata/perl5/amd64-openbsd/Encode/Encoding.pm \
/usr/libdata/perl5/Pod/Simple.pm \
/usr/libdata/perl5/integer.pm \
/usr/libdata/perl5/Pod/Escapes.pm \
/usr/libdata/perl5/Pod/Simple/LinkSection.pm \
/usr/libdata/perl5/Pod/Simple/BlackBox.pm \
/usr/libdata/perl5/amd64-openbsd/Digest/MD5.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Digest/MD5/MD5.so \
/usr/local/libdata/perl5/site_perl/SNMP_util.pm \
/usr/local/libdata/perl5/site_perl/BER.pm \
/usr/local/libdata/perl5/site_perl/SNMP_Session.pm \
/usr/libdata/perl5/amd64-openbsd/Socket.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Socket/Socket.so \
/usr/libdata/perl5/amd64-openbsd/IO/Socket.pm \
/usr/libdata/perl5/amd64-openbsd/IO/Handle.pm \
/usr/libdata/perl5/Symbol.pm \
/usr/libdata/perl5/SelectSaver.pm \
/usr/libdata/perl5/amd64-openbsd/IO.pm \
/usr/libdata/perl5/amd64-openbsd/auto/IO/IO.so \
/usr/libdata/perl5/amd64-openbsd/Errno.pm \
/usr/libdata/perl5/amd64-openbsd/IO/Socket/INET.pm \
/usr/libdata/perl5/amd64-openbsd/IO/Socket/UNIX.pm \
/usr/libdata/perl5/amd64-openbsd/POSIX.pm \
/usr/libdata/perl5/amd64-openbsd/Fcntl.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Fcntl/Fcntl.so \
/usr/libdata/perl5/amd64-openbsd/auto/POSIX/POSIX.so \
/usr/libdata/perl5/Tie/Hash.pm \
/usr/local/libdata/perl5/site_perl/Config/Grammar.pm \
/usr/local/libdata/perl5/site_perl/Config/Grammar/Dynamic.pm \
/usr/local/libdata/perl5/site_perl/amd64-openbsd/RRDs.pm \
/usr/local/libdata/perl5/site_perl/amd64-openbsd/auto/RRDs/RRDs.so \
/usr/libdata/perl5/amd64-openbsd/Sys/Syslog.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Sys/Syslog/Syslog.so \
/usr/libdata/perl5/amd64-openbsd/Sys/Hostname.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Sys/Hostname/Hostname.so \
/usr/local/lib/Smokeping \
/usr/libdata/perl5/amd64-openbsd/Data/Dumper.pm \
/usr/libdata/perl5/Memoize/Storable.pm \
/usr/libdata/perl5/amd64-openbsd/Storable.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Storable/Storable.so \
/usr/local/libdata/perl5/site_perl/Digest/HMAC_MD5.pm \
/usr/local/libdata/perl5/site_perl/Digest/HMAC.pm \
/usr/local/libdata/perl5/site_perl/LWP \
/usr/local/libdata/perl5/site_perl/LWP.pm \
/usr/local/libdata/perl5/site_perl/HTTP \
/usr/local/libdata/perl5/site_perl/URI.pm \
/usr/local/libdata/perl5/site_perl/URI/Escape.pm \
/usr/libdata/perl5/Time/Local.pm \
/usr/local/libdata/perl5/site_perl/Try/Tiny.pm \
/usr/libdata/perl5/amd64-openbsd/Scalar/Util.pm \
/usr/libdata/perl5/amd64-openbsd/List/Util.pm \
/usr/libdata/perl5/amd64-openbsd/auto/List/Util/Util.so \
/usr/libdata/perl5/Safe.pm \
/usr/libdata/perl5/amd64-openbsd/B.pm \
/usr/libdata/perl5/amd64-openbsd/auto/B/B.so \
/usr/libdata/perl5/amd64-openbsd/Opcode.pm \
/usr/libdata/perl5/subs.pm \
/usr/libdata/perl5/amd64-openbsd/auto/Opcode/Opcode.so \
/usr/libdata/perl5/utf8.pm \
/usr/libdata/perl5/utf8_heavy.pl \
/usr/libdata/perl5/amd64-openbsd/re.pm \
/usr/libdata/perl5/amd64-openbsd/auto/re/re.so \
/usr/libdata/perl5/unicore/Heavy.pl \
/usr/libdata/perl5/amd64-openbsd/File/Glob.pm \
/usr/libdata/perl5/amd64-openbsd/auto/File/Glob/Glob.so \
/usr/libdata/perl5/Net/SMTP.pm \
/usr/libdata/perl5/Net/Cmd.pm \
/usr/libdata/perl5/Net/Config.pm \
/usr/sbin/sendmail \
/usr/sbin/mailwrapper \
/usr/lib/libutil.so.13.0 \
/usr/lib/libc.so.92.5 \
/usr/libexec/ld.so \
/usr/libdata/perl5/IPC/Open3.pm"

pkg_add -I smokeping smokeping_fcgi

for file in $FILES
do
  echo ${file}
  tar cf - ${file} 2> /dev/null | (cd ${WWW_BASE}; tar xf - > /dev/null 2>&1 ) 
done

mkdir -p ${WWW_BASE}/htdocs/smokeping/cache
mkdir -p ${WWW_BASE}/var/db/smokeping
mkdir -p ${WWW_BASE}/var/run/smokeping

chown -R www ${WWW_BASE}/htdocs/smokeping/cache
chown -R www ${WWW_BASE}/var/db/smokeping
chown -R www ${WWW_BASE}/var/run/smokeping

chroot -u root ${WWW_BASE} ${TARGET} ${ARGS} 

