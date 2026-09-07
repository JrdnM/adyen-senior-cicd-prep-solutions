#!/usr/bin/env bash
# Week 07 / Day 03 — Robust scripts: traps, logging, and locking
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

#!/usr/bin/env bash
set -euo pipefail
[[ ${DEBUG:-0} == 1 ]] && set -x

tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT       # runs on success, error, and signals

# Single-instance guard: re-exec under an exclusive lock
exec 9>/var/lock/myjob.lock
flock -n 9 || { echo "already running" >&2; exit 0; }
# Alternative one-liner in cron:
#   flock -n /var/lock/myjob.lock /usr/local/bin/myjob.sh

log() { printf '%s %s\n' "$(date -Is)" "$*" | tee -a /var/log/myjob.log; }
log "starting run"

# Or log straight to the journal so journalctl -t myjob works:
#   logger -t myjob "starting run"
