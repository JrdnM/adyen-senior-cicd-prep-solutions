# Week 02 / Day 01 — Viewing and paging files

## Objectives

- Read large files without loading them into an editor
- Follow a log file live
- Extract the head or tail of a stream

## Commands in scope

- `cat`
- `less`
- `head`
- `tail`
- `wc`
- `nl`

## Exercises

1. Show the first 20 and last 20 lines of `/var/log/syslog` (or `journalctl` output).
2. Follow a log file live and stop cleanly.
3. Count lines, words, and bytes in `/etc/services`.
4. Inside `less`, search forward for a pattern and jump to the end of the file.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
