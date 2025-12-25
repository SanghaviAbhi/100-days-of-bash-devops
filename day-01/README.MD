	- permissive thresholds (should return `status: OK` and exit `0`)
	- strict disk threshold (forces an alert and non-zero exit)

# Day 01 — Bash Shell Scripting for DevOps

This is Day 1 of the “100 Days of Bash Shell Scripting for DevOps” series

## Introduction: Why Every DevOps Engineer Must Learn Bash

In the DevOps world, tools change frequently — Docker, Kubernetes, Jenkins, Terraform, cloud providers — but Bash scripting remains constant.

If you work with:

- Linux servers
- Cloud virtual machines
- CI/CD pipelines
- Monitoring and backups

You are already dependent on Bash, whether you realize it or not.

Most DevOps engineers fail in real production environments not because they don’t know tools, but because they can’t automate repetitive tasks using shell scripts.

This Day 1 article builds a strong foundation by covering:

- What Bash is
- How Bash scripts work
- Variables and inputs
- Conditional logic
- Real DevOps-style practical scripts

This is not theory — this is production mindset Bash.

## What Is Bash Shell?

Bash (Bourne Again Shell) is a command-line interpreter used in Linux and Unix-based systems.

It allows you to:

- Execute system commands
- Chain commands together
- Write scripts to automate tasks
- Control system behavior logically

Most Linux servers run Bash by default. When you connect to a server using SSH, you are already inside a Bash shell.

## Why Bash Is Critical for DevOps

Bash is used in:

- Server startup scripts
- Cron jobs
- CI/CD pipelines
- Cloud-init scripts
- Monitoring and alerting
- Backup and cleanup automation

Even advanced DevOps tools internally rely on shell scripts.

## Understanding Your First Bash Script

Let’s start with the simplest possible Bash script.

```bash
#!/bin/bash
echo "Welcome to Bash Shell Scripting for DevOps"
```

### Explanation

- `#!/bin/bash` → Shebang

	Tells the operating system to execute the script using Bash

- `echo` → Prints output to the terminal

### How to Run a Bash Script

```bash
chmod +x script.sh
./script.sh
```

This permission step is mandatory in real servers.

### Real DevOps Use Case

In CI/CD pipelines, scripts like this are used to:

- Initialize builds
- Print environment details
- Start deployment workflows

## Bash Variables: Making Scripts Dynamic

Without variables, scripts are useless.

Example: Basic Variable

```bash
#!/bin/bash

ROLE="DevOps Engineer"
echo "Welcome $ROLE"
```

### Environment Variables (Very Important)

```bash
echo "Current User: $USER"
echo "Home Directory: $HOME"
echo "System Path: $PATH"
```

### Why DevOps Engineers Use Environment Variables

- Separate Dev / UAT / Production
- Store configuration values
- Avoid hardcoding sensitive data

## Real-Time DevOps Example

```bash
ENVIRONMENT="production"

if [ "$ENVIRONMENT" = "production" ]; then
	echo "Deploying to PRODUCTION server"
fi
```

This logic is the backbone of deployment scripts.

## Taking User Input in Bash (Interactive Automation)

Many production scripts require human confirmation.

Example: User Input

```bash
#!/bin/bash

echo "Enter server name:"
read SERVER_NAME

echo "You selected server: $SERVER_NAME"
```

### Real DevOps Use Case

Restarting services safely:

```bash
echo "Enter service name to restart:"
read SERVICE

echo "Restarting $SERVICE..."
systemctl restart "$SERVICE"
```

This avoids accidental restarts of critical services.

## Conditional Logic in Bash (Decision Making)

Conditions turn scripts into intelligent automation.

Basic If-Else Example

```bash
#!/bin/bash

echo "Enter CPU usage percentage:"
read CPU

if [ "$CPU" -gt 80 ]; then
	echo "Warning: High CPU usage"
else
	echo "CPU usage is normal"
fi
```

### Why This Matters in Production

Conditions are used to:

- Trigger alerts
- Stop deployments
- Prevent failures
- Auto-heal services

## Real-Time Practical Example: Disk Usage Monitoring

This is a real production-level script.

```bash
#!/bin/bash

DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ "$DISK_USAGE" -ge 85 ]; then
	echo "CRITICAL: Disk usage is ${DISK_USAGE}%"
else
	echo "Disk usage is healthy: ${DISK_USAGE}%"
fi
```

### Where This Is Used

- Cron-based monitoring
- Pre-deployment checks
- Server health audits
- Alerting systems

This exact logic is used in enterprise monitoring tools.

## Combined DevOps Starter Script (Day 1 Practical)

This script combines variables, input, conditions, and system checks.

```bash
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
```

### Real Production Usage

- Before deployments
- Before database migrations
- Before scaling servers
- During incident troubleshooting

## Common Beginner Mistakes (Avoid These)

- Hardcoding values instead of variables
- No validation before destructive commands
- Running scripts without understanding permissions
- No logging or output clarity

## Professional Bash scripts are

- Predictable
- Safe
- Readable
- Reusable

Files for this lesson are available in the repository under `day-01/`. Try the reference script and experiment with the exercises in the `README.MD`.

Walkthrough
1. Make the script executable:

```bash
chmod +x day-01/script.sh
```

2. Run the script:

```bash
sudo ./day-01/script.sh -e production
```

3. Interpret exit codes:
- `0` — success
- `3` — disk usage critical (address before proceeding)

Exercise
1. Modify the script to also check available inode % for `/` and warn if > 90%.
2. Add a `--json` flag to output a machine-readable summary (JSON) instead of plain logs.

Reference solution
- `day-01/script.sh` contains the solution. Use it as a starting point and submit a PR to the repo with your changes.

BLog post draft
- See `day1.html` for an SEO-friendly article ready to publish.

Pro tips
- Avoid hardcoding paths and credentials — prefer env vars.
- Make scripts idempotent and safe: no destructive defaults.
- Add unit-like checks: run scripts in a staging VM before production.
