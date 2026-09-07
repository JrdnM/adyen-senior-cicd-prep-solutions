# Week 02 / Day 05 — Special bits, ACLs, and attributes

## Objectives

- Explain setuid, setgid, and the sticky bit
- Grant per-user access with POSIX ACLs
- Make a file immutable with chattr

## Commands in scope

- `chmod u+s g+s +t`
- `getfacl`
- `setfacl`
- `lsattr`
- `chattr`

## Exercises

1. Explain why `/tmp` is mode 1777 and what would break without the sticky bit.
2. Create a shared group directory where every new file inherits the group.
3. Grant user `alice` read-write on a file owned by someone else, without changing its group.
4. Make a config file immutable and show that even root cannot edit it until the flag is cleared.

## Solution

See [`solution.sh`](solution.sh). Work the exercises first — reading the
answer teaches you far less than getting stuck does.
