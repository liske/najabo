#!/bin/sh

groupadd -g "${NBGID}" nbgroup
useradd -u "${NBUID}" -g "${NBGID}" nbuser

mkdir -p /var/run/najabo /var/spool/najabo
chown "${NBUID}:${NBGID}" /var/run/najabo /var/spool/najabo

exec su -p -s /usr/bin/perl nbuser -- $@
