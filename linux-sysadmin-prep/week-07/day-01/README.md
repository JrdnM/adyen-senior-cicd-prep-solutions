# Week 07 / Day 01 — Bash scripting fundamentals

## Objectives

- Write a script with a safe preamble
- Use variables, quoting, and conditionals correctly
- Handle arguments and exit codes

## Commands in scope

- `#!/usr/bin/env bash`
- `set -euo pipefail`
- `test`
- `[[ ]]`
- `$?`

## Exercises

1. Write a script that takes a directory argument and errors out clearly if it is missing or not a directory.
2. Explain what each flag in `set -euo pipefail` does.
3. Show why unquoted variables are dangerous.
4. Return a non-zero exit code on failure and check it from the caller.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
