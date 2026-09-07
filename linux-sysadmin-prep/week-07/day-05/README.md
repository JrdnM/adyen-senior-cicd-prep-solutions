# Week 07 / Day 05 — Putting it together: a health-check script

## Objectives

- Combine the week's tools into one deliverable
- Report status with meaningful exit codes
- Make output both human- and machine-readable

## Commands in scope

- `everything from week 07`

## Exercises

1. Write `healthcheck.sh` that checks disk usage, memory, a systemd unit, and an HTTP endpoint.
2. Exit 0 for OK, 1 for warning, 2 for critical.
3. Support a `--json` flag.
4. Wire it to a systemd timer that runs every five minutes.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
