# Week 04 / Day 03 — Writing your first unit file

## Objectives

- Author a minimal service unit
- Run a service as an unprivileged user
- Apply basic sandboxing directives

## Commands in scope

- `[Unit] [Service] [Install]`
- `ExecStart`
- `User`
- `WantedBy`

## Exercises

1. Write a unit that runs `/opt/app/server` as user `app`, restarts on failure, and starts after the network is up.
2. Explain what `WantedBy=multi-user.target` actually does.
3. Add three hardening directives and explain each.
4. Validate the unit and start it.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
