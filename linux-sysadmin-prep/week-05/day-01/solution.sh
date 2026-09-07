#!/usr/bin/env bash
# Week 05 / Day 01 — Disks, partitions, and block devices
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINT
blkid

# Whole-disk GPT partition (destructive -- confirm the device first!)
parted -s /dev/sdb mklabel gpt
parted -s /dev/sdb mkpart primary ext4 1MiB 100%
partprobe /dev/sdb
lsblk /dev/sdb

# MBR: max 2 TiB per disk, 4 primary partitions, required for legacy BIOS boot.
# GPT: 2 TiB+ disks, up to 128 partitions by default, redundant headers with
# CRCs, and required for UEFI boot. Default to GPT on anything modern.
