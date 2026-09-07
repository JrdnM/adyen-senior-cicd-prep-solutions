#!/usr/bin/env bash
# Week 07 / Day 05 — Putting it together: a health-check script
#
# Reference solutions. These are meant to be read and adapted, not run as a
# single script: several commands are destructive or need a lab VM.

#!/usr/bin/env bash
set -uo pipefail          # deliberately NOT -e: we want to run every check

UNIT=${UNIT:-nginx}
URL=${URL:-http://localhost/healthz}
DISK_WARN=80 DISK_CRIT=90

status=0
declare -A results
note() { local k=$1 sev=$2 msg=$3; results[$k]=$msg; (( sev > status )) && status=$sev; :; }

disk=$(df --output=pcent / | tail -1 | tr -dc '0-9')
if   (( disk >= DISK_CRIT )); then note disk 2 "critical: / at ${disk}%"
elif (( disk >= DISK_WARN )); then note disk 1 "warning: / at ${disk}%"
else                               note disk 0 "ok: / at ${disk}%"; fi

avail=$(free -m | awk '/^Mem:/ {print $7}')
(( avail < 256 )) && note mem 1 "warning: ${avail}MB available" \
                  || note mem 0 "ok: ${avail}MB available"

systemctl is-active --quiet "$UNIT" \
    && note unit 0 "ok: $UNIT active" \
    || note unit 2 "critical: $UNIT not active"

code=$(curl -sS -o /dev/null -w '%{http_code}' --max-time 5 "$URL" || echo 000)
[[ $code == 200 ]] && note http 0 "ok: $URL -> $code" \
                   || note http 2 "critical: $URL -> $code"

if [[ ${1:-} == --json ]]; then
    printf '{'
    sep=''
    for k in "${!results[@]}"; do printf '%s"%s":"%s"' "$sep" "$k" "${results[$k]}"; sep=','; done
    printf ',"status":%d}\n' "$status"
else
    for k in "${!results[@]}"; do printf '%-6s %s\n' "$k" "${results[$k]}"; done
fi
exit "$status"

# Timer: OnCalendar=*:0/5  (every five minutes), same service/timer pattern
# as Day 04.
