# Week 06 / Day 05 — SSH: keys, config, and hardening

## Objectives

- Authenticate with keys instead of passwords
- Use ~/.ssh/config to simplify access
- Harden sshd sensibly

## Commands in scope

- `ssh-keygen`
- `ssh-copy-id`
- `~/.ssh/config`
- `sshd_config`
- `ProxyJump`

## Exercises

1. Generate an ed25519 key pair and install the public key on a server.
2. Write a `~/.ssh/config` entry that reaches a private host through a bastion.
3. Disable password and root login in sshd, and verify before disconnecting.
4. Explain the correct permissions on `~/.ssh` and `authorized_keys`.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
