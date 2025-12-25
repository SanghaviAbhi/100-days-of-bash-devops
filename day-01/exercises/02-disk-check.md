# Exercise 2 — Disk Usage Warning

Goal: Extend the script from Exercise 1 to check root filesystem disk usage and print a warning if usage is >= 80%.

Acceptance Criteria
- Script named `exercise2.sh` in `day-01/exercises/`.
- Prints `Disk usage: X%` and, if `X >= 80`, prints `Warning: Disk usage is high (X%).`.
- Should work without sudo; use `df` as in the examples.

Hints
- Use `df --output=pcent /` and clean the percent sign.
