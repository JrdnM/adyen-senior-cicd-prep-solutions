#!/usr/bin/env bash
# Week 08 / Day 01 — Hardening a fresh server
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

ss -lptn                       # anything on 0.0.0.0 needs a reason
systemctl disable --now <unneeded-service>

# Debian/Ubuntu automatic security updates
apt install unattended-upgrades
dpkg-reconfigure -plow unattended-upgrades
# RHEL: dnf install dnf-automatic && systemctl enable --now dnf-automatic.timer

apt install fail2ban
cat > /etc/fail2ban/jail.d/sshd.local <<'EOF'
[sshd]
enabled  = true
maxretry = 5
findtime = 10m
bantime  = 1h
EOF
systemctl enable --now fail2ban
fail2ban-client status sshd

# Baseline checklist:
#  1. Key-only SSH, no root login, non-default admin user with sudo
#  2. Default-deny inbound firewall, minimum ports open
#  3. Automatic security updates enabled
#  4. No unnecessary listening services
#  5. Unique non-shared accounts; no shared credentials
#  6. Persistent journald with a size cap, plus log rotation
#  7. Time sync (chrony/systemd-timesyncd) -- logs are useless with skewed clocks
#  8. Monitoring/alerting on disk, memory, and key units
#  9. Tested backups with a documented restore procedure
# 10. Audit setuid binaries and world-writable files
