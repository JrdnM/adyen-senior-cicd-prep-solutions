#!/usr/bin/env bash
# Week 01 / Day 02 — Creating, copying, moving, and deleting
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

mkdir -p ~/lab/week01/{a,b,c}
cd ~/lab/week01
touch file{01..10}.txt

# Even-numbered files only
cp file{02,04,06,08,10}.txt a/

# Links
ln  file01.txt hard.txt      # same inode, same data
ln -s file01.txt soft.txt    # separate inode pointing at a path
ls -li file01.txt hard.txt soft.txt
# hard.txt shares file01.txt's inode number and bumps its link count to 2.
# soft.txt has its own inode, type 'l', and breaks if file01.txt is removed.

# Always dry-run destructive globs first:
echo rm -rf ~/lab/week01/b   # inspect, then drop the leading 'echo'
