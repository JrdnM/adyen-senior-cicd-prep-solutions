#!/usr/bin/env bash
# Week 07 / Day 04 — Scheduling: cron and systemd timers
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

crontab -e
# m  h  dom mon dow  command
  30 2  *   *   *    /usr/local/bin/backup.sh >> /var/log/backup.log 2>&1

# systemd equivalent
cat > /etc/systemd/system/backup.service <<'EOF'
[Unit]
Description=Nightly backup
[Service]
Type=oneshot
ExecStart=/usr/local/bin/backup.sh
EOF

cat > /etc/systemd/system/backup.timer <<'EOF'
[Unit]
Description=Run nightly backup
[Timer]
OnCalendar=*-*-* 02:30:00
Persistent=true          # run on boot if the machine was off at 02:30
RandomizedDelaySec=300
[Install]
WantedBy=timers.target
EOF

systemctl daemon-reload && systemctl enable --now backup.timer
systemctl list-timers backup.timer
systemd-analyze calendar '*-*-* 02:30:00'

# Why cron jobs fail when your shell works:
#  1. PATH is minimal (often /usr/bin:/bin) -- use absolute paths.
#  2. No interactive shell: ~/.bashrc and ~/.profile are never sourced,
#     so exported env vars and shell functions are missing.
#  3. Output goes to mail, not your terminal -- redirect it or you see nothing.
#     (Also: no TTY, and a different working directory -- cd explicitly.)
