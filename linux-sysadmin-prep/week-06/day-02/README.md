# Week 06 / Day 02 — DNS and name resolution

## Objectives

- Trace how a hostname becomes an IP
- Query DNS directly
- Debug resolver misconfiguration

## Commands in scope

- `dig`
- `host`
- `resolvectl`
- `/etc/hosts`
- `/etc/nsswitch.conf`

## Exercises

1. Look up the A and MX records for a domain, and query a specific nameserver.
2. Determine the order in which your system consults hosts files vs DNS.
3. Show which resolver systemd-resolved is actually using.
4. Explain why an entry in `/etc/hosts` can override a correct DNS record.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
