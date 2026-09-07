#!/usr/bin/env bash
# Week 02 / Day 01 — Viewing and paging files
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

head -n 20 /var/log/syslog
tail -n 20 /var/log/syslog

tail -f /var/log/syslog     # Ctrl-C to stop
tail -F /var/log/syslog     # survives log rotation; prefer this for logs

wc /etc/services            # lines words bytes
wc -l /etc/services

# less navigation:
#   /pattern  search forward      n / N  next / previous match
#   G  end of file                g  start of file
#   q  quit                       -N  toggle line numbers
