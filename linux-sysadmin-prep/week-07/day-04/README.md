# Week 07 / Day 04 — Scheduling: cron and systemd timers

## Objectives

- Write a crontab entry correctly
- Create an equivalent systemd timer
- Debug a job that 'works manually but not from cron'

## Commands in scope

- `crontab`
- `systemd timers`
- `OnCalendar`
- `PATH`

## Exercises

1. Schedule a backup at 02:30 every day via cron.
2. Write the systemd service + timer pair that does the same.
3. Give the three most common reasons a cron job fails while the same command works in your shell.
4. Show when a timer will next fire.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
