#!/usr/bin/env bash
# Week 03 / Day 02 — sudo and privilege escalation
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Never edit sudoers directly -- visudo syntax-checks before installing.
visudo -f /etc/sudoers.d/ops
# contents:
#   %ops ALL=(root) NOPASSWD: /usr/bin/systemctl restart nginx
chmod 440 /etc/sudoers.d/ops
visudo -c                     # validate everything

journalctl _COMM=sudo --since -1d | grep deploy

# A syntax error in /etc/sudoers can lock everyone out of root.
# visudo validates and refuses to install a broken file; a plain editor does not.

# Allowing vim (or less, find, awk, tar...) is equivalent to full root:
# from inside vim, :!/bin/sh gives an unrestricted root shell.
# Grant specific, non-interactive commands with full paths and no wildcards.
