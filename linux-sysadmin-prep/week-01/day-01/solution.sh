#!/usr/bin/env bash
# Week 01 / Day 01 — Navigating the filesystem
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

pwd
cd /etc
cd            # bare cd returns to $HOME
cd -          # ...and '-' toggles back to the previous directory

# Newest-first long listing including dotfiles
ls -alt /var/log

# Metadata for a single file
stat /etc/hostname

# FHS quick reference:
#   /etc  host-specific configuration files
#   /var  variable data: logs, spools, caches, databases
#   /usr  read-only user-land programs and libraries shipped by the distro
#   /opt  add-on software installed outside the package manager
#   /tmp  world-writable scratch space, usually cleared on boot
