# Week 03 / Day 05 — Resource usage: CPU, memory, and I/O

## Objectives

- Interpret load average, memory columns, and I/O wait
- Identify the process responsible for pressure
- Distinguish cache from genuinely used memory

## Commands in scope

- `uptime`
- `free`
- `vmstat`
- `iostat`
- `top`
- `pidstat`

## Exercises

1. Interpret a load average of `8.00 4.00 2.00` on a 4-core box.
2. Explain why `free -h` shows almost no free memory on a healthy server.
3. Identify the process doing the most disk I/O.
4. Determine whether a slow machine is CPU-bound, memory-bound, or I/O-bound.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
