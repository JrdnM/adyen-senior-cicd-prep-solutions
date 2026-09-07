#!/usr/bin/env bash
# Week 04 / Day 03 — Writing your first unit file
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

cat > /etc/systemd/system/app.service <<'EOF'
[Unit]
Description=Example app
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
User=app
Group=app
WorkingDirectory=/opt/app
ExecStart=/opt/app/server --config /etc/app/config.yaml
Restart=on-failure
RestartSec=5s

# Hardening
NoNewPrivileges=true      # the process can never gain privileges via setuid
ProtectSystem=strict      # / is read-only to this unit
ProtectHome=true          # /home, /root, /run/user are inaccessible
PrivateTmp=true           # its own /tmp namespace

[Install]
WantedBy=multi-user.target
EOF

systemd-analyze verify /etc/systemd/system/app.service
systemctl daemon-reload
systemctl enable --now app

# WantedBy=multi-user.target: 'systemctl enable' symlinks this unit into
# multi-user.target.wants/, so the normal boot target pulls it in.
