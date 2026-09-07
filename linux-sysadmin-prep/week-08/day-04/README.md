# Week 08 / Day 04 — Boot process and recovery

## Objectives

- Describe the boot sequence from firmware to login
- Recover a host that will not boot
- Reset a lost root password

## Commands in scope

- `GRUB`
- `initramfs`
- `systemd targets`
- `rescue mode`
- `chroot`

## Exercises

1. Describe each stage: firmware, bootloader, kernel, initramfs, PID 1, target.
2. Boot into a shell when the root filesystem fails to mount.
3. Reset the root password from a live environment.
4. Find which unit is making boot slow.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
