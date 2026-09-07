# Week 02 / Day 02 — Text processing: grep, cut, sort, uniq

## Objectives

- Filter and reshape line-oriented data
- Build the classic sort | uniq -c | sort -rn idiom
- Use basic vs extended regular expressions

## Commands in scope

- `grep -E`
- `cut`
- `sort`
- `uniq`
- `tr`
- `column`

## Exercises

1. List every login shell in use on the system, with a count of how many accounts use each.
2. Print just the username and UID columns of `/etc/passwd`.
3. Find lines in `/etc/passwd` for accounts with UID >= 1000 (regex or awk).
4. Show the ten most frequent source IPs in an auth log.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
