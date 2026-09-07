#!/usr/bin/env bash
# Week 03 / Day 01 — User and group management
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

useradd -m -s /bin/bash -G devs deploy
passwd deploy

usermod -aG docker deploy     # -a is essential; without it you REPLACE the group list
id deploy
getent group docker

passwd -l deploy              # prepends '!' to the hash -> password auth fails
usermod -L deploy             # equivalent
# To disable the account entirely, also set the shell:
usermod -s /usr/sbin/nologin deploy

# /etc/shadow fields:
#   name:hash:lastchange:min:max:warn:inactive:expire:reserved
#   lastchange/expire are days since 1970-01-01.
#   A '*' or '!' hash means no password login is possible.
