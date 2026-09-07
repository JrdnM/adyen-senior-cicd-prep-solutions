#!/usr/bin/env bash
# Week 06 / Day 02 — DNS and name resolution
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

dig example.com A +short
dig example.com MX
dig @1.1.1.1 example.com +trace       # follow the delegation from the root

grep '^hosts:' /etc/nsswitch.conf     # e.g. 'files dns' -> /etc/hosts wins
resolvectl status
resolvectl query example.com

# /etc/resolv.conf may be a symlink to a stub (127.0.0.53) managed by
# systemd-resolved; editing it directly gets overwritten. Configure the
# resolver via netplan/NetworkManager/resolved.conf instead.

# nsswitch consults 'files' before 'dns', so a stale /etc/hosts line silently
# shadows DNS -- always check it when a name resolves "wrong" on one host only.
