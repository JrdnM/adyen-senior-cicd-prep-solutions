#!/usr/bin/env bash
# Week 03 / Day 05 — Resource usage: CPU, memory, and I/O
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

uptime            # 1, 5, 15 minute averages of runnable + uninterruptible tasks
# 8.00 on 4 cores = 2x oversubscribed right now, but the 5/15m values are lower,
# so the spike is recent and shrinking -- watch, don't page.

free -h
# 'used' excludes buff/cache. Linux uses free RAM as page cache on purpose;
# the number that matters is 'available', which counts reclaimable cache.

iotop -o            # or: pidstat -d 1
vmstat 1 5
# Reading vmstat: high 'r' with high 'us'/'sy' -> CPU-bound.
#                 nonzero 'si'/'so' -> swapping, memory-bound.
#                 high 'wa' with high 'b' -> I/O-bound.
