#!/usr/bin/env bash
# Week 08 / Day 02 — Auditing and file integrity
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

find / -xdev \( -perm -4000 -o -perm -2000 \) -type f -ls 2>/dev/null
find / -xdev -type f -perm -0002 -ls 2>/dev/null   # world-writable files
find / -xdev -type d -perm -0002 ! -perm -1000 -ls 2>/dev/null  # no sticky bit

last -a | head -20        # successful logins  (/var/log/wtmp)
lastb | head -20          # failed logins      (/var/log/btmp)
journalctl -u ssh | grep -i 'accepted\|failed'

auditctl -w /etc/passwd -p wa -k passwd_changes
ausearch -k passwd_changes -i
# Persist it in /etc/audit/rules.d/audit.rules

debsums -c                # Debian: files whose checksums no longer match
rpm -Va                   # RHEL equivalent
aide --check              # if AIDE was initialised at build time
