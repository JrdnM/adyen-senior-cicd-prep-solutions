#!/usr/bin/env bash
# Week 05 / Day 03 — LVM basics
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

pvcreate /dev/sdb /dev/sdc
vgcreate vg_data /dev/sdb /dev/sdc
lvcreate -L 10G -n lv_app vg_data
mkfs.ext4 /dev/vg_data/lv_app
mount /dev/vg_data/lv_app /srv/app

# Grow online (ext4 and xfs both support online growth)
lvextend -L 20G /dev/vg_data/lv_app
resize2fs /dev/vg_data/lv_app      # xfs: xfs_growfs /srv/app
# Shortcut for both steps: lvextend -r -L 20G /dev/vg_data/lv_app

# Snapshot / rollback
lvcreate -L 2G -s -n lv_app_snap /dev/vg_data/lv_app
# ...upgrade...  if it goes wrong:
umount /srv/app
lvconvert --merge /dev/vg_data/lv_app_snap
mount /srv/app

vgs; lvs; pvs

# LVM decouples filesystems from physical disks: resize online, span devices,
# snapshot, and migrate data between disks with pvmove -- none of which plain
# partitions allow.
