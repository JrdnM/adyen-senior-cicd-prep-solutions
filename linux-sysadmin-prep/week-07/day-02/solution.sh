#!/usr/bin/env bash
# Week 07 / Day 02 — Loops, functions, and arrays
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Files with spaces: glob directly, never 'for f in $(ls)'
shopt -s nullglob
for f in /etc/myapp/*.conf; do
    echo "processing: $f"
done

# Line-by-line, safely
while IFS= read -r line; do
    printf '%s\n' "$line"
done < input.txt
# IFS= keeps leading/trailing whitespace; -r stops backslash interpretation.

# Functions "return" via stdout; 'return' only sets an exit status (0-255)
latest_backup() {
    local dir=$1
    ls -1t "$dir"/*.tar.gz 2>/dev/null | head -1
}
newest=$(latest_backup /backups)

# Arrays keep arguments intact
args=(--verbose --exclude 'my docs' /srv/app)
rsync "${args[@]}" backup@host:/backups/
