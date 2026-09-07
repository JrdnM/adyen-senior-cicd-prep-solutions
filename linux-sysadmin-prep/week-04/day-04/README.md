# Week 04 / Day 04 — Logs: journalctl and syslog

## Objectives

- Query the journal by unit, time, and priority
- Understand persistent vs. volatile journals
- Know where traditional syslog files still live

## Commands in scope

- `journalctl`
- `rsyslog`
- `/var/log`
- `logger`

## Exercises

1. Show the last 100 lines for one unit and follow new entries.
2. Show only errors and worse since yesterday.
3. Make the journal persistent across reboots and cap it at 500 MB.
4. Write a test message into the log from the shell.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
