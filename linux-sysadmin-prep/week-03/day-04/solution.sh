#!/usr/bin/env bash
# Week 03 / Day 04 — Jobs, background execution, and persistence
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

./long-job.sh          # Ctrl-Z suspends it
jobs                   # [1]+  Stopped
bg %1                  # resume in background
fg %1                  # bring back to foreground

nohup ./long-job.sh > job.log 2>&1 &
disown -h %1           # detach from the shell's job table

tmux new -s work       # Ctrl-b d to detach
tmux ls
tmux attach -t work

# nohup/tmux are for one-off, human-supervised work.
# Use a systemd unit when the process must start at boot, restart on failure,
# have resource limits, log to the journal, or be managed by someone other
# than the person who happened to start it.
