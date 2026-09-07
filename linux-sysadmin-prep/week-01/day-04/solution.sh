#!/usr/bin/env bash
# Week 01 / Day 04 — Redirection and pipes
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

ls /etc /nope > out.txt 2> err.txt

grep -c '/bin/bash' /etc/passwd
# or, to practice pipes explicitly:
cat /etc/passwd | grep '/bin/bash' | wc -l

# Both to file and to terminal
ls -l /etc | tee listing.txt

# Keep stdout, drop stderr
find / -name '*.conf' 2>/dev/null | head

# Merge both streams into one file
ls /etc /nope &> combined.txt      # bash shorthand
ls /etc /nope > combined.txt 2>&1  # portable form; order matters
