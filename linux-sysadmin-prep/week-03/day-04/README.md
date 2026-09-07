# Week 03 / Day 04 — Jobs, background execution, and persistence

## Objectives

- Manage foreground and background jobs in a shell
- Keep a process alive after logout
- Choose between nohup, screen/tmux, and a systemd unit

## Commands in scope

- `&`
- `jobs`
- `fg`
- `bg`
- `Ctrl-Z`
- `nohup`
- `tmux`
- `screen`
- `disown`

## Exercises

1. Start a long-running command, suspend it, background it, then bring it back.
2. Run a job that survives your SSH session ending.
3. Attach to and detach from a tmux session.
4. Explain when a systemd service is the right answer instead of nohup.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
