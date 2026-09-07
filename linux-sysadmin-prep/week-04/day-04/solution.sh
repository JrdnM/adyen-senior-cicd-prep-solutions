#!/usr/bin/env bash
# Week 04 / Day 04 — Logs: journalctl and syslog
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

journalctl -u nginx -n 100 -f
journalctl -p err --since yesterday
journalctl -b -1              # the previous boot
journalctl --since '2024-01-01 09:00' --until '2024-01-01 10:00'

# Persistence
mkdir -p /var/log/journal
# /etc/systemd/journald.conf:
#   Storage=persistent
#   SystemMaxUse=500M
systemctl restart systemd-journald
journalctl --disk-usage
journalctl --vacuum-size=500M

logger -t mytest -p user.warning 'hello from the shell'

# Priorities, 0..7: emerg alert crit err warning notice info debug
