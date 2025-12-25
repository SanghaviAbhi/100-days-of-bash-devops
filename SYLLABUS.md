# 100 Days of Bash Shell Scripting for DevOps — Syllabus

This syllabus maps the 100-day plan into folders and provides publishing and monetization guidance for the blog + GitHub series. Each day should have a folder `day-XX/` containing:

- `script.sh` — reference script (production-ready where applicable)
- `README.MD` — lesson guide, commands, exercises
- `day1.html` — publishable article draft (renamed from `blog.html`)
- `test_smoke.sh` — smoke tests (optional but recommended)

Publishing cadence suggestions
- Short posts (daily): 15–30 minute reads with code snippets and one exercise.
- Long-form posts (weekly): 1,200–2,500 words for high-value topics (DB backups, AWS, security). These are good for SEO and monetization.
- Suggested schedule: 3 posts/week (fast cadence), or weekly long posts for higher quality.

Monetization & SEO notes
- Tag high-CPC topics in titles and metadata: "MySQL backup script", "AWS S3 backup", "PostgreSQL backup", "Bash security audit", "CI/CD deployment checks".
- Include affiliate links for cloud providers, VPS providers, monitoring tools (Datadog, New Relic), and books/courses where relevant.
- Create email capture CTA (newsletter) and an evergreen "Premium scripts pack" or Patreon for monetization.

Repo layout (recommended)
```
/
  LICENSE
  README.md
  SYLLABUS.md
  day-01/
    script.sh
    README.MD
    day1.html
    test_smoke.sh
  day-02/
    ...
  .github/
    workflows/
```

Phases (high-level mapping)

PHASE 1 — Bash Foundations (Day 1–10)
- Day 01 — Bash shell, shebang, variables, pre-check script (server health)
- Day 02 — Loops, functions, script arguments, exit codes
- Day 03 — File & directory handling (`ls`, `find`, `stat`, `du`)
- Day 04 — Permissions & ownership (`chmod`, `chown`, `umask`)
- Day 05 — Date, time & logging (timestamps, `logger`)
- Day 06 — Input validation & defensive scripting
- Day 07 — Process management (`ps`, `top`, `kill`)
- Day 08 — Signals & `trap` for graceful shutdown
- Day 09 — Bash best practices (structure, naming, modular scripts)
- Day 10 — Mini project: Linux Server Health Check Tool

PHASE 2 — System Automation (Day 11–25)
- Day 11 — File backup automation
- Day 12 — Folder compression & archiving
- Day 13 — Backup rotation strategies (7/14/30 days)
- Day 14 — Log rotation script
- Day 15 — Temp file cleanup
- Day 16 — Disk usage alert system
- Day 17 — CPU & RAM monitoring scripts
- Day 18 — Uptime & load monitoring
- Day 19 — Service auto-restart scripts
- Day 20 — Cron job automation & wrappers
- Day 21 — User management automation
- Day 22 — Password expiry checks
- Day 23 — Login audit scripts
- Day 24 — SSH security checker
- Day 25 — Mini Project: Linux Auto-Maintenance Tool

PHASE 3 — Backup & Database Automation (Day 26–40)
- Day 26 — MySQL backup scripts (logical backups, `mysqldump`)
- Day 27 — PostgreSQL backup (`pg_dump` and `pg_basebackup` basics)
- Day 28 — MongoDB backup scripting
- Day 29 — Multi-DB backup framework (pluggable connectors)
- Day 30 — Database restore automation
- Day 31 — Encrypted backups (GPG)
- Day 32 — Remote backups (`scp`, SSH keys)
- Day 33 — `rsync` incremental backups
- Day 34 — AWS S3 backup scripts (CLI + lifecycle)
- Day 35 — Backup failure alerts & retries
- Day 36 — Backup verification (checksums, test-restore)
- Day 37 — Disaster recovery basics
- Day 38 — Server snapshot logic (cloud snapshots)
- Day 39 — Full server backup orchestration
- Day 40 — Mini Project: Enterprise Backup System

PHASE 4 — Networking & Security (Day 41–55)
- Day 41 — Ping & network connectivity checks
- Day 42 — Port scanning with `nmap`/`nc` wrappers
- Day 43 — Firewall status audit (iptables/nft)
- Day 44 — Failed SSH login detector
- Day 45 — Auto IP blocking script (fail2ban-style)
- Day 46 — SSL/TLS expiry checker
- Day 47 — Website uptime monitor
- Day 48 — HTTP status checker & retries
- Day 49 — API health checks with `curl` and JSON parsing
- Day 50 — Rate-limit detection & throttling alerts
- Day 51 — User activity audit scripts
- Day 52 — Root login detection & alerts
- Day 53 — File integrity monitoring (hashing)
- Day 54 — Security hardening checklist
- Day 55 — Mini Project: Bash Security Audit Tool

PHASE 5 — DevOps, CI/CD & Cloud (Day 56–75)
- Day 56 — Git automation scripts
- Day 57 — CI/CD helper scripts (GitLab/GitHub Actions/Jenkins)
- Day 58 — Deployment automation (ssh/rsync/ansible wrappers)
- Day 59 — Rollback scripts & safe deployment patterns
- Day 60 — Zero-downtime deploy logic
- Day 61 — Docker container monitoring scripts
- Day 62 — Docker auto-restart & cleanup automation
- Day 63 — Docker resource cleanup scripts
- Day 64 — Kubernetes pod checks (kubectl wrappers)
- Day 65 — Namespace resource audit scripts
- Day 66 — Jenkins job monitoring scripts
- Day 67 — Build status checker & notifier
- Day 68 — AWS EC2 status scripts
- Day 69 — AWS cost alert script (billing checks)
- Day 70 — Load balancer health checks
- Day 71 — Blue-Green deployment helper scripts
- Day 72 — Canary deployment logic
- Day 73 — Auto scaling trigger scripts
- Day 74 — Infrastructure validation scripts
- Day 75 — Mini Project: CI/CD Automation Toolkit

PHASE 6 — Advanced & Production (Day 76–100)
- Day 76 — Menu-driven CLI tool in Bash
- Day 77 — Parallel execution patterns (xargs -P, GNU parallel)
- Day 78 — Multi-server orchestration (SSH multiplexing)
- Day 79 — JSON parsing in Bash (`jq` + `awk` fallbacks)
- Day 80 — YAML parsing options (yq, python fallback)
- Day 81 — Monitoring agent design (lightweight)
- Day 82 — Alerting framework (webhooks, Slack, PagerDuty)
- Day 83 — Slack webhook integration
- Day 84 — Email & SMS alerts (sendmail, Twilio API)
- Day 85 — Performance benchmarking scripts
- Day 86 — Incident response scripts & runbooks
- Day 87 — Auto-healing service scripts
- Day 88 — Compliance audit scripts (PCI/GDPR basics)
- Day 89 — Server migration helpers
- Day 90 — Disaster recovery automation
- Day 91 — Production readiness checks
- Day 92 — Daily DevOps checklist automation
- Day 93 — Interview-style Bash challenges
- Day 94 — Optimize legacy scripts
- Day 95 — When to use Bash vs Python (decision criteria)
- Day 96 — Build monitoring dashboard logic (data collection)
- Day 97 — Enterprise Bash framework (modularization)
- Day 98 — Real incident case studies & fixes
- Day 99 — Full DevOps script collection and packaging
- Day 100 — Final Project: Bash DevOps Toolkit

Publishing & monetization checklist (per high-value day)

- Add a clear TL;DR and a one-click copy snippet of the script.
- Include a tested, production-ready script plus a simplified beginner version.
- Insert affiliate links to relevant services (cloud providers, monitoring tools) where appropriate.
- Add a downloadable ZIP or a paid "scripts pack" containing tested scripts and CI workflows.
- Write a companion video or screencast for high CPC topics.

Contributor notes
- Add `CONTRIBUTING.md` with standards for scripts (shebang, `set -euo pipefail`, tests).
- Require a smoke test for each day (preferably runnable on GitHub Actions).

License & attribution
- Keep an open-source-friendly license (MIT/Apache 2.0) and add license info in the repo root.
