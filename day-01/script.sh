#!/bin/bash
echo "Enter environment (dev/stage/prod):"
read ENV

echo "Running checks for $ENV environment"
echo "User: $USER"
echo "Host: $(hostname)"

DISK=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK" -ge 80 ]; then
  echo "Warning: Disk usage high ($DISK%)"
else
  echo "Disk usage normal ($DISK%)"
fi
