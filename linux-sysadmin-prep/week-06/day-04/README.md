# Week 06 / Day 04 — Firewalls: nftables, ufw, firewalld

## Objectives

- Understand default-deny inbound policy
- Open a port with the distro's front-end
- Read the effective ruleset

## Commands in scope

- `ufw`
- `firewall-cmd`
- `nft`
- `iptables`

## Exercises

1. Set a default-deny inbound policy while keeping SSH reachable.
2. Open port 443 to everyone and 5432 only to 10.0.0.0/24.
3. Show the resulting ruleset and make it persist across reboot.
4. Explain the ordering hazard in firewall rules.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
