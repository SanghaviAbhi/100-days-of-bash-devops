#!/usr/bin/env bash
# Simple Day 01 script for absolute beginners (renamed to devops.sh)
# Safe, non-destructive, runs in the user's home directory (no sudo required)

set -euo pipefail
IFS=$'\n\t'

# Simple logging to a file inside the current directory
LOGFILE="${PWD}/day01-simple.log"

echo "Starting Day 01 simple script..." | tee -a "$LOGFILE"

# Show basic environment information
echo "Current user: $USER" | tee -a "$LOGFILE"
echo "Home directory: $HOME" | tee -a "$LOGFILE"
echo "Current directory: $(pwd)" | tee -a "$LOGFILE"

# Example variable usage
ROLE="DevOps Engineer"
echo "Hello, $ROLE" | tee -a "$LOGFILE"

# Take user input (non-destructive)
echo -n "Enter environment (dev/stage/prod): "
read -r ENV
echo "Selected environment: $ENV" | tee -a "$LOGFILE"

# Simple conditional: check root filesystem disk usage and warn
DISK_USAGE=$(df / --output=pcent 2>/dev/null | tail -n1 | tr -d ' %' || echo 0)
echo "Root disk usage: ${DISK_USAGE}%" | tee -a "$LOGFILE"
if [ "$DISK_USAGE" -ge 80 ]; then
  echo "Warning: Disk usage is high (${DISK_USAGE}%)." | tee -a "$LOGFILE"
else
  echo "Disk usage is normal." | tee -a "$LOGFILE"
fi

echo "Simple script completed. Log: $LOGFILE"
