#!/usr/bin/env bash
set -euo pipefail

LOGFILE="${PWD}/day01-exercise3.log"
echo -n "Enter environment (dev/stage/prod): "
read -r ENV
ts=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "$ts - ENV=$ENV" | tee -a "$LOGFILE"

disk_pct=$(df --output=pcent / 2>/dev/null | tail -n1 | tr -d ' %' || echo 0)
echo "Disk usage: ${disk_pct}%" | tee -a "$LOGFILE"
if [ "$disk_pct" -ge 80 ]; then
  echo "Warning: Disk usage is high (${disk_pct}%)." | tee -a "$LOGFILE"
fi
