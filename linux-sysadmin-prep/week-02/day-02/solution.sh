#!/usr/bin/env bash
# Week 02 / Day 02 — Text processing: grep, cut, sort, uniq
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Shells in use, most common first
cut -d: -f7 /etc/passwd | sort | uniq -c | sort -rn

# Username and UID
cut -d: -f1,3 /etc/passwd | column -t -s:

# Regular users (UID >= 1000) -- awk is clearer than a regex here
awk -F: '$3 >= 1000 && $3 < 65534 {print $1, $3}' /etc/passwd

# Top talkers in an auth log
grep 'Failed password' /var/log/auth.log \
  | grep -oE '([0-9]{1,3}\.){3}[0-9]{1,3}' \
  | sort | uniq -c | sort -rn | head -10
