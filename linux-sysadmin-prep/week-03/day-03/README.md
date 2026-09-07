# Week 03 / Day 03 — Processes and signals

## Objectives

- Inspect running processes and their relationships
- Send the right signal to stop a process
- Read load average and process state codes

## Commands in scope

- `ps`
- `top`
- `htop`
- `pgrep`
- `pkill`
- `kill`
- `nice`
- `renice`

## Exercises

1. List every process owned by `www-data`, showing PID, PPID, and command.
2. Find the PID listening on port 443 and terminate it gracefully.
3. Explain the difference between SIGTERM, SIGKILL, and SIGHUP.
4. Lower the priority of a running CPU-heavy job.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
