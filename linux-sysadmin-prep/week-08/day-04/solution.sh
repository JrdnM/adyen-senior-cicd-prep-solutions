#!/usr/bin/env bash
# Week 08 / Day 04 — Boot process and recovery
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

# Boot sequence:
#  1. Firmware (UEFI/BIOS) -- POST, picks a boot device
#  2. Bootloader (GRUB)    -- loads the kernel and initramfs from /boot
#  3. Kernel               -- initialises hardware, mounts the initramfs
#  4. initramfs            -- loads the drivers needed to find and mount real root
#  5. systemd (PID 1)      -- pivots to real root, activates the default target
#  6. Target               -- multi-user.target or graphical.target, then a login

# Emergency shell: at the GRUB menu press 'e' and append to the linux line:
#   systemd.unit=rescue.target      (single-user, root fs mounted)
#   systemd.unit=emergency.target   (minimal, root mounted read-only)
mount -o remount,rw /              # in emergency mode, before editing anything

# Root password reset from a live/rescue ISO:
mount /dev/sda2 /mnt
mount --bind /dev /mnt/dev; mount --bind /proc /mnt/proc; mount --bind /sys /mnt/sys
chroot /mnt
passwd root
exit; umount -R /mnt; reboot

systemd-analyze blame          # slowest units
systemd-analyze critical-chain # what actually gated the boot
