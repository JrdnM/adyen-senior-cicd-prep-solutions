# Week 01 / Day 05 — Finding things: find, locate, grep

## Objectives

- Locate files by name, size, age, and ownership
- Search file contents recursively
- Combine `find` with `-exec` and `xargs`

## Commands in scope

- `find`
- `locate`
- `grep`
- `xargs`
- `du`

## Exercises

1. Find every `.log` file under `/var/log` modified in the last 24 hours.
2. Find files larger than 10 MB anywhere under `/var`.
3. Find all files owned by root under `/etc` that are group-writable.
4. Recursively grep `/etc` for the string `nameserver`, showing filenames and line numbers.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
