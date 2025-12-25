#!/usr/bin/env bash
set -euo pipefail

disk_pct=$(df --output=pcent / 2>/dev/null | tail -n1 | tr -d ' %' || echo 0)
echo "Disk usage: ${disk_pct}%"
if [ "$disk_pct" -ge 80 ]; then
  echo "Warning: Disk usage is high (${disk_pct}%)."
fi
