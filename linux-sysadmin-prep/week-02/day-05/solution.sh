#!/usr/bin/env bash
# Week 02 / Day 05 — Special bits, ACLs, and attributes
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

ls -ld /tmp        # drwxrwxrwt -- the trailing 't' is the sticky bit.
# Without it, any user could delete any other user's files in a world-writable dir.
# With it, only the file's owner (or root) may unlink an entry.

mkdir /srv/team && chgrp devs /srv/team
chmod 2770 /srv/team          # the leading 2 is setgid: new files inherit 'devs'

setfacl -m u:alice:rw file.txt
getfacl file.txt              # ls -l now shows a trailing '+' in the mode

chattr +i /etc/important.conf
lsattr /etc/important.conf    # ----i---------
# Even root gets EPERM on write until: chattr -i /etc/important.conf

# setuid on a binary runs it as the file's owner (e.g. /usr/bin/passwd).
# Audit for unexpected ones: find / -perm -4000 -type f 2>/dev/null
