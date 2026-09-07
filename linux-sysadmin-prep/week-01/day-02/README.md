# Week 01 / Day 02 — Creating, copying, moving, and deleting

## Objectives

- Create and remove files and directory trees safely
- Understand the difference between copying and moving
- Use wildcards without destroying things you meant to keep

## Commands in scope

- `touch`
- `mkdir`
- `cp`
- `mv`
- `rm`
- `rmdir`
- `ln`

## Exercises

1. Create `~/lab/week01/{a,b,c}` in one command.
2. Create ten files `file01.txt` .. `file10.txt` using brace expansion.
3. Copy only the even-numbered files into `~/lab/week01/a`.
4. Make a hard link and a symlink to the same file and show how `ls -li` distinguishes them.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
