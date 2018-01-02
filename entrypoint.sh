#!/bin/sh

groupadd -g "${NBGID}" nbgroup
useradd -u "${NBUID}" -g "${NBGID}" nbuser

exec su -p -s /usr/bin/perl nbuser -- $@
