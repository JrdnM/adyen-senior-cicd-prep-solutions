#!/usr/bin/env bash
# Week 02 / Day 04 — Permissions: rwx, octal, and umask
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

chmod u=rwx,g=rx,o= script.sh
chmod 750 script.sh          # identical result

mkdir shared
chgrp devs shared
chmod 750 shared             # group: r-x = list and cd, but no create/delete

# umask 0022 masks off group/other write:
#   files:       666 & ~022 = 644  (no execute bit is ever granted by default)
#   directories: 777 & ~022 = 755
umask            # show current
umask 027        # stricter: group r-x, other nothing

chown -R --no-dereference app:app /srv/app

# On a directory: r = list names, w = create/rename/delete entries,
# x = traverse into it and stat its contents. r without x is nearly useless.
