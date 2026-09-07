# Week 05 / Day 04 — Quotas, links, and space troubleshooting

## Objectives

- Diagnose 'no space left' when the disk looks empty
- Understand inode exhaustion
- Set a basic user quota

## Commands in scope

- `df -i`
- `quota`
- `tune2fs`
- `find`
- `du`

## Exercises

1. A write fails with ENOSPC but `df -h` shows 40% free. Give two explanations.
2. Check inode usage and find the directory holding millions of small files.
3. Enable and set a quota for user `app` on `/srv`.
4. Safely reclaim space from a log a running daemon holds open.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
