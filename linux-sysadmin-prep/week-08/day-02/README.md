# Week 08 / Day 02 — Auditing and file integrity

## Objectives

- Find risky permissions across the filesystem
- Track who changed what
- Detect unexpected binaries

## Commands in scope

- `find -perm`
- `auditd`
- `aide`
- `last`
- `lastb`
- `debsums`

## Exercises

1. Find all setuid and setgid binaries and world-writable files.
2. Show recent successful and failed logins.
3. Audit every write to `/etc/passwd`.
4. Verify that installed package files have not been modified.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
