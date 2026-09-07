# Week 06 / Day 03 — Ports, sockets, and connectivity testing

## Objectives

- List listening sockets and their owners
- Test reachability at the right layer
- Distinguish 'filtered' from 'refused'

## Commands in scope

- `ss`
- `nc`
- `curl`
- `ping`
- `traceroute`
- `mtr`
- `nmap`

## Exercises

1. List all TCP listeners with the owning process.
2. Test whether port 5432 on a remote host is reachable, without a Postgres client.
3. Explain the difference between 'connection refused' and a connection that hangs.
4. Trace the network path to a host and identify where latency appears.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
