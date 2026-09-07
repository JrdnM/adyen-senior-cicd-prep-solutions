# linux-sysadmin-prep

A 40-day, self-paced Linux system administration curriculum for someone with
beginner to intermediate knowledge. Eight weeks, five days each. Every day is a
short brief with objectives, the commands in scope, four exercises, and a
worked reference solution.

## How to use this

1. Read the day's `README.md` and attempt the exercises on a throwaway VM.
2. Only then open `solution.sh`.
3. Anything you had to look up goes in your own notes — that list is the real
   output of this course.

Use a disposable VM (multipass, Vagrant, a cloud instance, or a container where
the exercise allows it). Several days involve partitioning disks, changing
firewall rules, and editing `sshd_config`; none of that belongs on a machine you
care about.

## Structure

```
week-01/README.md
week-01/day-01/README.md      exercise brief
week-01/day-01/solution.sh    reference solution
...
week-08/day-05/
```

## Syllabus

| Week | Theme |
| --- | --- |
| [01](week-01/) | Shell and filesystem fundamentals |
| [02](week-02/) | Files, text, and permissions |
| [03](week-03/) | Users, groups, and processes |
| [04](week-04/) | Packages, services, and logs |
| [05](week-05/) | Storage and filesystems |
| [06](week-06/) | Networking |
| [07](week-07/) | Shell scripting and automation |
| [08](week-08/) | Security, hardening, and troubleshooting |

Week 08 ends with a capstone: take a fresh VM to a hardened, monitored, backed-up
host running an application, and write the runbook for it.

## Assumed starting point

You can already open a terminal, run `ls` and `cd`, and edit a file in `nano` or
`vim`. Everything else is built from there.

## Distribution notes

Examples target Debian/Ubuntu by default, with the RHEL/Fedora equivalent shown
wherever the two differ meaningfully (`apt` vs `dnf`, `ufw` vs `firewalld`).
