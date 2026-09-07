#!/usr/bin/env bash
# Week 02 / Day 03 — sed and awk basics
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

cp /etc/sample.conf ./sample.conf
sed -i.bak 's/foo/bar/g' sample.conf   # .bak holds the original

# Strip comments and blank lines (the effective config)
sed -e 's/#.*//' -e '/^[[:space:]]*$/d' /etc/ssh/sshd_config
# or: grep -vE '^\s*(#|$)' /etc/ssh/sshd_config

# Sum a column
awk '{sum += $3} END {print sum}' data.txt

# Reformat passwd
awk -F: '{print $1 " -> " $6}' /etc/passwd

# Rule of thumb: one transformation -> sed; column logic or arithmetic -> awk;
# anything with branching, functions, or error handling -> a real script.
