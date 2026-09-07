# Week 05 / Day 03 — LVM basics

## Objectives

- Explain PV, VG, and LV
- Create a logical volume and grow it online
- Take a snapshot

## Commands in scope

- `pvcreate`
- `vgcreate`
- `lvcreate`
- `lvextend`
- `resize2fs`
- `lvs`

## Exercises

1. Build a volume group from two disks and carve out a 10 G logical volume.
2. Grow that volume to 20 G and extend the filesystem without unmounting.
3. Take a snapshot before a risky upgrade and roll back.
4. Explain the advantage of LVM over plain partitions.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
