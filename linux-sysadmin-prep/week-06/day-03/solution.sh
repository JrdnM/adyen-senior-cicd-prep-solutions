#!/usr/bin/env bash
# Week 06 / Day 03 — Ports, sockets, and connectivity testing
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

ss -lptn                       # listening, process, tcp, numeric
ss -tn state established

nc -zv db.internal 5432
# or: timeout 3 bash -c '</dev/tcp/db.internal/5432' && echo open

curl -sS -o /dev/null -w '%{http_code} %{time_total}s\n' https://example.com

mtr -rwc 20 example.com        # traceroute + ping, run this over a window

# Refused = a RST came back: you reached the host, nothing is listening
#           (or a firewall is configured to reject). Fast failure.
# Hang/timeout = packets are being dropped silently: a firewall DROP rule,
#           a security group, or a routing black hole. Slow failure.
# That distinction usually tells you whether to look at the app or the network.
