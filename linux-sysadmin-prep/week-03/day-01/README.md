# Week 03 / Day 01 — User and group management

## Objectives

- Create, modify, and delete accounts
- Read /etc/passwd, /etc/shadow, and /etc/group
- Understand system accounts vs. login accounts

## Commands in scope

- `useradd`
- `usermod`
- `userdel`
- `groupadd`
- `passwd`
- `id`
- `getent`

## Exercises

1. Create user `deploy` with a home directory, `/bin/bash` as the shell, and membership in `devs`.
2. Add an existing user to a supplementary group without removing their current groups.
3. Lock an account so it cannot log in with a password but keys still work.
4. Explain each colon-separated field of a `/etc/shadow` line.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
