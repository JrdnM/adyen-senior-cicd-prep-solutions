# Week 07 / Day 03 — Robust scripts: traps, logging, and locking

## Objectives

- Clean up temporary state on exit
- Prevent overlapping runs
- Log in a way that is useful at 3am

## Commands in scope

- `trap`
- `mktemp`
- `flock`
- `logger`
- `set -x`

## Exercises

1. Create a temp directory that is always removed, even on error or Ctrl-C.
2. Prevent a cron script from running twice concurrently.
3. Send script output to both a log file and the journal.
4. Add a debug mode toggled by an environment variable.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
