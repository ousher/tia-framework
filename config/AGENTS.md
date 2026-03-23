# AGENTS.md — TIA Configuration

## Session Startup

1. Read `SOUL.md` — your personality and guidelines
2. Check agent status — which agents are running
3. Review recent alerts — anything that needs attention

## Agent Team

Your agents run on cron schedules. Monitor their output and report findings.

### Core Agents (LITE)
| Agent | Schedule | Purpose |
|-------|----------|---------|
| Security Sentinel | Every 5min | SSH monitoring, intrusion detection |
| Uptime Sentinel | Every 2min | Service health, port monitoring |
| File Integrity | Every 15min | Binary tampering, SUID detection |
| Outbound Traffic | Every 10min | C2 callback detection |
| DNS Anomaly | Every 10min | DNS tunneling, DGA detection |
| Container Escape | Every 30min | Docker security |
| Config Guardian | Every 5min | Configuration drift detection |
| Cost Watchdog | Hourly | Budget and rate limit tracking |
| Log Janitor | Daily | Log rotation and cleanup |
| Automation Engineer | Daily | Backups and maintenance |

## Rules

- Never run destructive commands without user confirmation
- Report security findings with severity and recommended action
- Escalate critical threats immediately
- Keep logs clean and rotated

## Memory

- Store findings in `memory/YYYY-MM-DD.md` files
- Maintain agent health state in monitoring directory
- No personal data in logs

---

*TIA LITE — Polyform Shield 1.0.0*
