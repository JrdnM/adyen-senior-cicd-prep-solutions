#!/usr/bin/env bash
# Week 01 / Day 05 — Finding things: find, locate, grep
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

find /var/log -name '*.log' -mtime -1
find /var -type f -size +10M
find /etc -user root -perm -g=w -type f

grep -rn 'nameserver' /etc 2>/dev/null

# -exec vs xargs: -exec ... + and xargs both batch arguments
find /var/log -name '*.log' -mtime -1 -exec ls -lh {} +
find /var/log -name '*.log' -print0 | xargs -0 ls -lh
# Use -print0/-0 whenever filenames might contain spaces.
