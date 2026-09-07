# Week 05 / Day 02 — Filesystems and mounting

## Objectives

- Create a filesystem and mount it
- Write a correct /etc/fstab entry
- Mount by UUID rather than device name

## Commands in scope

- `mkfs`
- `mount`
- `umount`
- `fstab`
- `findmnt`
- `systemd-mount`

## Exercises

1. Format a partition as ext4 with a label and mount it at `/data`.
2. Add an fstab entry that mounts it at boot by UUID with `noatime`.
3. Validate the fstab entry without rebooting.
4. Explain why mounting by device name (`/dev/sdb1`) is fragile.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
