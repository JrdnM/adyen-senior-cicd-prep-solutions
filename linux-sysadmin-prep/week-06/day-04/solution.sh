#!/usr/bin/env bash
# Week 06 / Day 04 — Firewalls: nftables, ufw, firewalld
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Ubuntu / ufw
ufw default deny incoming
ufw default allow outgoing
ufw allow 22/tcp                 # do this BEFORE enabling, or you lock yourself out
ufw allow 443/tcp
ufw allow from 10.0.0.0/24 to any port 5432 proto tcp
ufw enable
ufw status numbered

# RHEL / firewalld
firewall-cmd --permanent --add-service=https
firewall-cmd --permanent --add-rich-rule=\
  'rule family=ipv4 source address=10.0.0.0/24 port port=5432 protocol=tcp accept'
firewall-cmd --reload
firewall-cmd --list-all

nft list ruleset                 # the real, effective rules underneath

# Rules are evaluated top to bottom, first match wins. A broad DROP or REJECT
# placed above a specific ACCEPT makes the ACCEPT dead code. Always read the
# ruleset in order, and test from an out-of-band session you can't lose.
