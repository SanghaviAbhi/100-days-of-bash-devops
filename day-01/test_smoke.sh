#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

# Updated smoke tests for the simpler interactive `day-01/script.sh`.
# - Test 1: provide 'dev' as input and assert the script prints the running checks line
# - Test 2: ensure the script prints a Disk usage line (either normal or warning)

SCRIPT="$(dirname "$0")/script.sh"

if [ ! -x "$SCRIPT" ]; then
  chmod +x "$SCRIPT"
fi

echo "Running smoke tests against $SCRIPT"

echo "Test 1: run with 'dev' input and check running message"
OUT1=$("$SCRIPT" <<< "dev" 2>&1) || {
  echo "Test 1 failed: script exited non-zero"
  echo "Output:"; echo "$OUT1"
  exit 10
}
echo "$OUT1" | grep -q "Running checks for dev environment" || {
  echo "Test 1 failed: expected running checks line"
  echo "$OUT1"
  exit 11
}
echo "Test 1 passed"

echo "Test 2: ensure Disk usage line is present"
echo "$OUT1" | grep -Eiq "Disk usage|Root disk usage" || {
  echo "Test 2 failed: expected a disk usage line"
  echo "$OUT1"
  exit 20
}
echo "Test 2 passed"

echo "All smoke tests passed"
exit 0
