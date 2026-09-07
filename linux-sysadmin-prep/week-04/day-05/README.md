# Week 04 / Day 05 — Log rotation and disk hygiene

## Objectives

- Configure logrotate for an application log
- Prevent a full /var from taking the host down
- Find what is actually consuming disk

## Commands in scope

- `logrotate`
- `du`
- `df`
- `ncdu`
- `lsof`

## Exercises

1. Write a logrotate config for `/var/log/app/*.log`: daily, 14 days, compressed.
2. Test the rotation without waiting a day.
3. Find the ten largest directories under `/var`.
4. Explain why `df` shows a full disk while `du` disagrees, and how to fix it.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
