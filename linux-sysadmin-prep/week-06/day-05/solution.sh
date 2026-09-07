#!/usr/bin/env bash
# Week 06 / Day 05 — SSH: keys, config, and hardening
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

ssh-keygen -t ed25519 -C 'jordan@laptop'
ssh-copy-id -i ~/.ssh/id_ed25519.pub deploy@host

cat >> ~/.ssh/config <<'EOF'
Host bastion
    HostName bastion.example.com
    User jordan

Host app-*
    User deploy
    ProxyJump bastion
    IdentityFile ~/.ssh/id_ed25519
EOF
# now: ssh app-01   goes through the bastion automatically

# /etc/ssh/sshd_config
#   PasswordAuthentication no
#   PermitRootLogin no
#   PubkeyAuthentication yes
sshd -t                     # validate config -- do this first
systemctl reload sshd
# Keep your current session open and confirm a NEW session works before
# closing it. That habit has saved more hosts than any other.

chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys ~/.ssh/id_ed25519
chmod 644 ~/.ssh/id_ed25519.pub
# sshd ignores keys silently if the permissions are too open -- check
# 'journalctl -u ssh' when key auth "just doesn't work".
