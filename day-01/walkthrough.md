# Day 01 Walkthrough — Line-by-line explanation (Beginner Path)

This walkthrough explains the simple, beginner-friendly examples and scripts used in Day 1. It's written for absolute beginners who want to understand what each line does and why.

1. Shebang and safe options

```bash
#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'
```

- `#!/usr/bin/env bash` tells the system to run this script with Bash.
- `set -e` exits the script immediately if any command returns a non-zero status.
- `set -u` treats unset variables as an error and exits.
- `set -o pipefail` causes a pipeline to fail if any command in the pipe fails.
- `IFS=$'\n\t'` reduces word-splitting issues by setting the internal-field-separator to newline and tab.

2. Simple logging

```bash
LOGFILE="${PWD}/day01-simple.log"
echo "Starting Day 01 simple script..." | tee -a "$LOGFILE"
```

- `LOGFILE` stores the path to a local log file in the current directory. We avoid `/var/log` to keep things simple and permission-free.
- `tee -a` writes output to both the terminal and appends to the log file.

3. Environment variables and built-ins

```bash
echo "Current user: $USER"
echo "Home directory: $HOME"
```

- `$USER` and `$HOME` are environment variables provided by the shell and the OS. They are very useful in DevOps scripts for per-user paths and permissions.

4. Variables and interpolation

```bash
ROLE="DevOps Engineer"
echo "Hello, $ROLE"
```

- Variables let you avoid hardcoding values. Use `"$VAR"` when printing or using values that may contain spaces.

5. Taking user input

```bash
echo -n "Enter environment (dev/stage/prod): "
read -r ENV
```

- `read -r VAR` reads a line of input into `VAR`. The `-r` prevents backslash escapes from being interpreted.
- Use input sparingly in production; prefer environment variables or flags for automation.

6. Conditionals: disk usage check

```bash
DISK_USAGE=$(df / --output=pcent 2>/dev/null | tail -n1 | tr -d ' %' || echo 0)
if [ "$DISK_USAGE" -ge 80 ]; then
  echo "Warning: Disk usage is high (${DISK_USAGE}%)."
else
  echo "Disk usage is normal."
fi
```

- `df --output=pcent /` returns percentage usage of root filesystem. We clean the result and compare numerically.
- Numeric comparisons use `-ge`, `-lt`, etc. Always make sure variables are numbers before comparing.

7. Running the simple script (example)

```bash
chmod +x day-01/devops.sh
./day-01/devops.sh
```

- You will be prompted for the environment. The script will print info, check disk usage, and create `day01-simple.log` in the current directory.

8. Moving from beginner to production

- Once comfortable with the simple script, inspect `day-01/script.sh` (the combined pre-check) which adds JSON output, configurable thresholds, and process checks.
- Use the exercises in `day-01/exercises/` to practice converting simple code into safer, testable scripts.
