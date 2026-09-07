# Week 02 / Day 04 — Permissions: rwx, octal, and umask

## Objectives

- Read and set permissions in symbolic and octal form
- Explain what execute means on a directory
- Predict the permissions of a newly created file from the umask

## Commands in scope

- `chmod`
- `chown`
- `chgrp`
- `umask`
- `ls -l`
- `namei`

## Exercises

1. Set a script to `rwxr-x---` using both symbolic and octal syntax.
2. Make a directory that members of group `devs` can enter and read but not modify.
3. Explain the default 0022 umask: what permissions do a new file and a new directory get?
4. Recursively give a directory tree to user `app` and group `app` without following symlinks.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
