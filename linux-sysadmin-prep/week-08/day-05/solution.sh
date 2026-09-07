#!/usr/bin/env bash
# Week 08 / Day 05 — Capstone: build, harden, and document a server
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Capstone acceptance criteria -- each line needs a command whose output proves it.

# 1. Users and access
#    - non-root admin account with sudo, key-only SSH, root login disabled
#      evidence: id admin; sshd -T | grep -E 'permitrootlogin|passwordauth'
# 2. Storage
#    - application data on its own LVM volume, mounted by UUID from fstab
#      evidence: lsblk; findmnt /srv/app; grep srv /etc/fstab
# 3. Service
#    - app runs under a systemd unit as an unprivileged user, restarts on failure
#      evidence: systemctl status app; systemctl show app -p Restart,User
# 4. Network
#    - default-deny inbound, only 22 and 443 open
#      evidence: ufw status verbose; ss -lptn
# 5. Logging
#    - persistent journal capped, logrotate for the app's own logs
#      evidence: journalctl --disk-usage; logrotate -d /etc/logrotate.d/app
# 6. Scheduled work
#    - nightly backup via systemd timer, with a restore you have actually run
#      evidence: systemctl list-timers backup.timer; a restore diff
# 7. Monitoring
#    - healthcheck.sh from Week 07 Day 05 on a five-minute timer
#      evidence: journalctl -u healthcheck -n 20
# 8. Updates
#    - unattended security updates enabled
#      evidence: systemctl status unattended-upgrades

# Runbook must cover: how to deploy a new version, how to roll back, where the
# logs are, how to restore from backup, and who to call when it is still broken.
