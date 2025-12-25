# Exercise 3 — Interactive Environment & Logging

Goal: Build a small script that asks the user for an environment (`dev/stage/prod`), writes the chosen environment and a timestamp to a local log file, and performs the disk check from Exercise 2.

Acceptance Criteria
- Script named `exercise3.sh` in `day-01/exercises/`.
- Prompts: `Enter environment (dev/stage/prod):` and accepts input.
- Appends a line to `day01-exercise3.log` with timestamp and selected environment.
- Performs the disk usage check and warns if needed.

Hints
- Use `date -u +"%Y-%m-%dT%H:%M:%SZ"` for a UTC timestamp.
- Append to log with `>>` or `tee -a`.
