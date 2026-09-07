#!/usr/bin/env bash
# Week 05 / Day 02 — Filesystems and mounting
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

mkfs.ext4 -L data /dev/sdb1
mkdir -p /data
mount /dev/sdb1 /data

blkid /dev/sdb1               # grab the UUID
cat >> /etc/fstab <<'EOF'
UUID=1234-abcd  /data  ext4  defaults,noatime  0  2
EOF

# fstab fields: device  mountpoint  fstype  options  dump  fsck-order
# fsck-order: 0 skip, 1 root filesystem, 2 everything else.

systemctl daemon-reload
umount /data && mount -a      # a bad fstab now fails here, not at boot
findmnt /data

# Kernel device names depend on probe order: adding a disk or changing a
# controller can turn /dev/sdb1 into /dev/sdc1 and leave the host unbootable.
# UUID= or LABEL= is stable across all of that.
