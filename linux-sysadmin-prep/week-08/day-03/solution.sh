#!/usr/bin/env bash
# Week 08 / Day 03 — Systematic troubleshooting
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# 'Site is down' -- work outside in, and confirm each layer before moving on:
#  1. Is it actually down, and for whom?   curl from two networks
#  2. DNS resolving?                        dig +short site
#  3. Host reachable?                       ping / mtr
#  4. Port open?                            ss -lptn / nc -zv
#  5. Service running?                      systemctl status
#  6. What do its logs say?                 journalctl -u svc -n 200
#  7. Resource exhaustion?                  df -h; df -i; free -h; uptime
#  8. What changed?                         deploys, package updates, config diffs

# Failed unit, first four commands:
systemctl status app.service
journalctl -u app.service -n 100 --no-pager
systemd-analyze verify /etc/systemd/system/app.service
sudo -u app /opt/app/server --config /etc/app/config.yaml   # run it by hand

# Stuck process
cat /proc/<pid>/status | grep State
cat /proc/<pid>/stack 2>/dev/null
strace -p <pid>                # what syscall is it sitting in?
ls -l /proc/<pid>/fd | tail

dmesg -T | tail -50            # OOM kills, disk errors, link flaps
journalctl -k -b               # same, via the journal

# Escalate when: you have a clear symptom, the evidence you have gathered,
# and the next step requires access or a decision that isn't yours.
