#!/usr/bin/env bash
# Week 07 / Day 01 — Bash scripting fundamentals
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

#!/usr/bin/env bash
set -euo pipefail

usage() { echo "usage: $(basename "$0") <directory>" >&2; exit 2; }

[[ $# -eq 1 ]] || usage
dir=$1
[[ -d $dir ]] || { echo "not a directory: $dir" >&2; exit 1; }

find "$dir" -maxdepth 1 -type f -printf '%f\n'

# set -e            exit on any unhandled non-zero command
# set -u            error on use of an unset variable (catches typos)
# set -o pipefail   a pipeline fails if ANY stage fails, not just the last
# Together these turn silent misbehaviour into a loud, early failure.

# Quoting: with dir='my docs', an unquoted  find $dir  becomes two arguments
# and searches './my' and './docs'. Quote every expansion unless you have a
# specific reason not to.

# Caller side:
#   ./script.sh /srv/app || echo "failed with $?"
