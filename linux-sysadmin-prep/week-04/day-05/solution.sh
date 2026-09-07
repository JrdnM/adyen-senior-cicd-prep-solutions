#!/usr/bin/env bash
# Week 04 / Day 05 — Log rotation and disk hygiene
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

cat > /etc/logrotate.d/app <<'EOF'
/var/log/app/*.log {
    daily
    rotate 14
    compress
    delaycompress
    missingok
    notifempty
    create 0640 app app
    sharedscripts
    postrotate
        systemctl reload app > /dev/null 2>&1 || true
    endscript
}
EOF

logrotate -d /etc/logrotate.d/app     # dry run
logrotate -f /etc/logrotate.d/app     # force now

du -h --max-depth=1 /var | sort -h | tail -10
df -h /var

# df > du usually means a deleted file is still held open by a process:
lsof +L1 | head
# The space returns when the holder is restarted (or its fd closed).
# Deleting a log a daemon has open frees nothing -- truncate it instead:
#   : > /var/log/app/big.log
