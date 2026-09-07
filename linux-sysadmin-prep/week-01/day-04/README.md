# Week 01 / Day 04 — Redirection and pipes

## Objectives

- Route stdout and stderr independently
- Chain commands with pipes to build small data pipelines
- Understand the difference between `>` and `>>`

## Commands in scope

- `> >> 2> &>`
- `|`
- `tee`
- `xargs`
- `/dev/null`

## Exercises

1. Run a command that produces both output and an error; send them to two different files.
2. Count how many lines in `/etc/passwd` mention `/bin/bash`, using a pipe.
3. Write output to a file *and* the terminal at the same time.
4. Discard stderr entirely while keeping stdout.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
