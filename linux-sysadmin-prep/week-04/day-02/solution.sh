#!/usr/bin/env bash
# Week 04 / Day 02 — systemd units and systemctl
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

systemctl status nginx
systemctl is-enabled nginx
systemctl show nginx -p ActiveEnterTimestamp

# start = right now, this boot only.  enable = create the boot-time symlink.
# 'systemctl enable --now nginx' does both.

systemctl edit nginx
# writes /etc/systemd/system/nginx.service.d/override.conf:
#   [Service]
#   Restart=on-failure
#   RestartSec=5s
systemctl daemon-reload && systemctl restart nginx

systemctl --failed
systemctl list-units --type=service --state=running
