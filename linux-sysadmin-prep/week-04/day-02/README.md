# Week 04 / Day 02 — systemd units and systemctl

## Objectives

- Start, stop, enable, and inspect services
- Read a unit file and understand the common directives
- Override a vendor unit without editing it

## Commands in scope

- `systemctl`
- `systemd-analyze`
- `unit files`
- `drop-ins`

## Exercises

1. Show whether nginx is running, enabled at boot, and when it last started.
2. Explain the difference between `start` and `enable`.
3. Add a restart-on-failure policy to a vendor-shipped unit without modifying the shipped file.
4. List every failed unit on the system.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
