#!/usr/bin/env bash
# Week 04 / Day 01 — Package management (apt and dnf)
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Debian / Ubuntu
apt update && apt list --upgradable
dpkg -S /usr/bin/dig          # -> bind9-dnsutils
dpkg -L bind9-dnsutils
apt-cache depends bind9-dnsutils
apt remove bind9-dnsutils     # leaves /etc config behind
apt purge  bind9-dnsutils     # removes config too

# RHEL / Fedora
dnf check-update
dnf provides /usr/bin/dig
rpm -ql bind-utils
dnf repoquery --requires bind-utils
dnf remove bind-utils

# Repos live in /etc/apt/sources.list.d/ and /etc/yum.repos.d/.
# Prefer distro packages over curl|bash: you get signatures, upgrades, and removal.
