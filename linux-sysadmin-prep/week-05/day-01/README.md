# Week 05 / Day 01 — Disks, partitions, and block devices

## Objectives

- Identify block devices and their partitions
- Create a partition table and a partition
- Understand MBR vs GPT

## Commands in scope

- `lsblk`
- `fdisk`
- `parted`
- `blkid`
- `wipefs`

## Exercises

1. List every block device with its size, type, and mountpoint.
2. Create a single GPT partition spanning a whole spare disk.
3. Show the UUID and filesystem type of every partition.
4. Explain when GPT is required rather than MBR.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
