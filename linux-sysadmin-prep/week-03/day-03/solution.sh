#!/usr/bin/env bash
# Week 03 / Day 03 — Processes and signals
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

ps -u www-data -o pid,ppid,stat,etime,cmd

ss -lptn 'sport = :443'       # shows the owning pid
kill -TERM <pid>              # or: pkill -TERM nginx

# Signals:
#   TERM (15) polite shutdown -- the process can clean up. Default for kill.
#   KILL  (9) unblockable, immediate; no cleanup, risks corrupt state. Last resort.
#   HUP   (1) historically 'terminal closed'; daemons reuse it to reload config.

renice +10 -p <pid>           # nice range -20 (greedy) .. +19 (yielding)
nice -n 10 ./batch-job.sh     # start a new job at low priority

# ps STAT codes: R running, S interruptible sleep, D uninterruptible (usually I/O),
# Z zombie, T stopped; suffix '+' foreground, 's' session leader.
