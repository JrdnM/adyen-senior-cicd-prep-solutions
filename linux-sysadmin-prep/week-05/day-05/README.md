# Week 05 / Day 05 — Backups with rsync and tar

## Objectives

- Take consistent file-level backups
- Use rsync incrementally and over SSH
- Verify that a backup actually restores

## Commands in scope

- `rsync`
- `tar`
- `ssh`
- `cron`

## Exercises

1. Mirror `/srv/app` to a backup host over SSH, deleting files removed at the source.
2. Create a dated compressed tarball excluding cache directories.
3. Do a dry run before any destructive sync.
4. Restore a single file from the tarball without unpacking everything.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
