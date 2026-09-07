#!/usr/bin/env bash
# Week 05 / Day 05 — Backups with rsync and tar
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Always dry-run a --delete sync first
rsync -aAXv --delete --dry-run /srv/app/ backup@host:/backups/app/
rsync -aAXv --delete /srv/app/ backup@host:/backups/app/
# -a archive (perms, times, symlinks, recursive), -A ACLs, -X xattrs.
# The trailing slash on the source means "contents of", not "the directory".

tar -czf "/backups/app-$(date +%F).tar.gz" \
    --exclude='*/cache/*' --exclude='*.tmp' -C /srv app

# Inspect and restore one path
tar -tzf /backups/app-2024-05-01.tar.gz | grep config.yaml
tar -xzf /backups/app-2024-05-01.tar.gz -C /tmp/restore app/config.yaml

# A backup you have never restored is a hypothesis, not a backup.
# Schedule a periodic test restore into a scratch directory and diff it.
