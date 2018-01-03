#!/bin/sh

# create user
groupadd -g "${NBGID}" nbgroup
useradd -u "${NBUID}" -g "${NBGID}" nbuser

# prepare ownership
chown "${NBUID}:${NBGID}" /var/run/najabo /var/spool/najabo
for fn in najabo.conf najabo.vcard
    test -e "/etc/najabo/$fn" || cp -vp "/etc/najabo.dist/$fn" "/etc/najabo/$fn"
    chown "${NBUID}:${NBGID}" "/etc/najabo/$fn"
done

# change user and exec
exec su -p -s /usr/bin/perl nbuser -- $@
