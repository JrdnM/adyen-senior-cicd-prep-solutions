#!/usr/bin/env bash
# Week 01 / Day 03 — Getting help: man, info, and --help
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

man 1 printf     # the /usr/bin/printf command
man 3 printf     # the C library function
man -k schedule  # same as: apropos schedule

type cd          # -> shell builtin
type ls          # -> /usr/bin/ls (possibly aliased)
type '['         # -> builtin, though /usr/bin/[ also exists

# SYNOPSIS notation:
#   [OPTION]...  square brackets mean optional; ... means repeatable
#   FILE         plain uppercase means a required argument you substitute
#   a|b          a vertical bar means "one of these"
