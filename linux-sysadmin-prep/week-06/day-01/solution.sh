#!/usr/bin/env bash
# Week 06 / Day 01 — Interfaces and addressing
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

ip -br addr
ip -br link
ip addr add 10.0.0.50/24 dev eth0
ip addr del 10.0.0.50/24 dev eth0     # 'ip' changes are lost on reboot

ip route
ip route get 1.1.1.1                  # which route/source a packet would use

# /26 = 32 - 26 = 6 host bits = 64 addresses, minus network and broadcast
# = 62 usable hosts.

# Persistence (Ubuntu netplan): /etc/netplan/01-netcfg.yaml
#   network:
#     version: 2
#     ethernets:
#       eth0:
#         addresses: [10.0.0.50/24]
#         routes: [{to: default, via: 10.0.0.1}]
#         nameservers: {addresses: [1.1.1.1]}
# netplan try   (auto-reverts if you lock yourself out), then: netplan apply
# NetworkManager equivalent: nmcli con mod / nmcli con up
