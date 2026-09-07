# Week 03 / Day 02 — sudo and privilege escalation

## Objectives

- Configure sudo safely with visudo
- Grant narrow, command-scoped privileges
- Audit who ran what

## Commands in scope

- `sudo`
- `visudo`
- `sudoers.d`
- `su`
- `journalctl`

## Exercises

1. Give group `ops` the ability to restart only nginx, with no password prompt.
2. Explain why editing `/etc/sudoers` with a plain editor is dangerous.
3. Find every sudo invocation by user `deploy` in the last day.
4. Explain the security problem with `ALL=(ALL) /usr/bin/vim`.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
