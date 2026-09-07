#!/usr/bin/env bash
# Week 05 / Day 04 — Quotas, links, and space troubleshooting
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

df -h /srv
df -i /srv        # inodes can run out long before bytes do

# Find the inode hog
find /srv -xdev -type f -printf '%h\n' | sort | uniq -c | sort -rn | head

# Quotas
# fstab options: usrquota,grpquota   then:
mount -o remount /srv
quotacheck -cum /srv
quotaon /srv
setquota -u app 5G 6G 0 0 /srv     # soft/hard blocks, soft/hard inodes
quota -u app

# Reclaim from an open file without restarting the daemon:
: > /var/log/app/huge.log          # truncate in place, keeps the inode/fd valid
# (rm would unlink it while the daemon keeps writing to the invisible inode.)

# Two ENOSPC causes with free bytes: inode exhaustion, and reserved blocks --
# ext4 reserves 5% for root by default: tune2fs -m 1 /dev/sdb1
