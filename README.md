<div align="center">

![TIA Banner](https://img.shields.io/badge/TIA-Autonomous%20Security%20Intelligence-7c3aed?style=for-the-badge&logoColor=white)

# 🧬 TIA — The Intelligence Architecture 🧬

[![License](https://img.shields.io/badge/License-MIT--0-brightgreen?style=flat-square)](LICENSE.md)
[![Platform](https://img.shields.io/badge/Platform-Ubuntu%2022.04+-orange?style=flat-square&logo=ubuntu)](https://ubuntu.com)
[![Shell](https://img.shields.io/badge/Shell-Bash%205.x-blue?style=flat-square&logo=gnubash)](https://www.gnu.org/software/bash/)
[![Python](https://img.shields.io/badge/Python-3.10+-blue?style=flat-square&logo=python)](https://python.org)
[![LITE](https://img.shields.io/badge/LITE-7%20Agents-22c55e?style=flat-square)](https://github.com/ousher/tia-framework)
[![ENT](https://img.shields.io/badge/ENT-35%20Agents-a855f7?style=flat-square)](https://ousher.github.io/tia-framework/)

</div>

---

## Overview

**Most security tools are goldfish. Every alert starts from zero.**

TIA is different. It's a framework for **stateful, autonomous security agents** — bash/Python processes that run on cron, communicate via a shared event bus, and write observations to a persistent memory layer that every other agent can query.

Each run builds on the last. Every agent knows what others have seen. The system learns your environment and gets smarter every week.

Each agent is:
- **Independent** — no direct agent-to-agent calls
- **Stateful** — observations persist across runs and are visible to other agents
- **Composable** — new agents plug into the existing bus without modifying others

---

## Architecture

```
?????????
└──────────────────────────────────────────────────────┘
```

**Event Bus:** Append-only JSONL file. Every agent writes structured events. Orchestrator reads and routes.

**Shared Memory Layer:** Local vector store. Agents write observations; any agent can query semantically. No API calls required — runs entirely on CPU.

---

## Agent Anatomy

Every agent sources two libraries and follows a consistent lifecycle:

```bash
#!/bin/bash
# my-agent.sh

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

agent_end "Checked auth log. Failures: $failed_logins"
```

**Lifecycle guarantees:**
- `agent_start` registers the run on the event bus
- `agent_end` writes a summary and marks the run complete
- Exit trap catches crashes and logs them as `UNEXPECTED_EXIT`

---

## LITE Agent Fleet

| Agent | Cron | Detects |
|-------|------|---------|
| `security-sentinel.sh` | `*/5 * * * *` | SSH brute-force, fail2ban events, auth anomalies |
| `config-guardian.sh` | `*/5 * * * *` | Config file tampering, auto-rollback on changes |
| `file-integrity.sh` | `*/15 * * * *` | SHA256 drift on critical binaries and configs |
| `dns-anomalies.sh` | `*/10 * * * *` | DNS tunneling, DGA patterns, resolver changes |
| `outbound-traffic.sh` | `*/10 * * * *` | Outbound C2, data exfiltration, reverse shells |
| `uptime-sentinel.sh` | `*/2 * * * *` | Service liveness, process conflicts |
| `credential-leak.sh` | `0 4 * * *` | Secrets in logs, env files, git history |

---

## Alert Severity Model

```
1  INFO      → logged to event bus only
2  LOW       → logged + written to shared memory
3  MEDIUM    → Telegram Ops Room notification
4  HIGH      → Ops Room + direct message to operator
5  CRITICAL  → Ops Room + DM + escalation protocol
```

```bash
# Usage from any agent
alert_send "agent-name" 4 "Human-readable description of what happened"
```

---

## Dead Man's Switch

Every agent emits a **heartbeat** at the end of each successful run. A watchdog monitors these heartbeats. If any agent goes silent beyond its expected interval:

```
Expected:  security-sentinel heartbeat every 5 min
Observed:  last heartbeat 17 min ago
Action:    ALERT sev-4 → "security-sentinel has been silent for 17 min"
```

Silence is treated as evidence of compromise — not just a bug.

---

## Requirements

**OS:** Ubuntu 22.04 LTS or 24.04 LTS  
**Resources:** 2 vCPU · 4 GB RAM · 20 GB disk (minimum)

```bash
# System packages
apt install -y fail2ban ufw auditd jq curl python3 python3-pip socat

# Python (memory layer)
pip install -r requirements.txt

# Optional — local AI fallback, no API key needed
# ollama pull qwen2:1.5b
```

---

## Project Layout

```
tia-framework/
├── README.md           ← you are here
├── WHITEPAPER.md       ← benchmark results, architecture deep-dive
├── TIA-ENT-OVERVIEW.md ← ENT capabilities and pricing
├── LICENSE.md
└── index.html          ← GitHub Pages landing page
```

> Agent scripts, orchestration logic, and the full memory layer are **ENT only**.  
> LITE framework available on request — [shotekk23@gmail.com](mailto:shotekk23@gmail.com)

---

## ENT: What's Added

| Component | Description |
|-----------|-------------|
| 28 additional agents | APT detection, container escapes, port shuffling, CVE monitoring, honeypots |
| Correlation engine | Cross-agent event synthesis — turns isolated alerts into attack narratives |
| Self-evolution | Periodic meta-analysis → proposes + applies agent improvements |
| Adversarial testing | Controlled attack simulation against live system to measure immune response |
| Digital Twin | Synchronized hot standby on separate infrastructure |
| REST API | External dashboard and SIEM integration |

---

## Benchmark (Project Skynet)

Controlled insider threat simulation. March 23, 2026.

| Metric | Target | Result |
|--------|--------|--------|
| Detection time | < 300s | **12.7s avg** |
| Identification | < 600s | **27.7s avg** |
| False positives | 0 | **0** |

Industry average detection time: **194 days.**  
Full methodology: [WHITEPAPER.md](./WHITEPAPER.md)

---

<div align="center">

[![Whitepaper](https://img.shields.io/badge/📄%20Whitepaper-Read%20Now-7c3aed?style=for-the-badge)](./WHITEPAPER.md)
[![Contact](https://img.shields.io/badge/✦%20ENT%20Access-shotekk23%40gmail.com-9333ea?style=for-the-badge)](mailto:shotekk23@gmail.com)
[![Website](https://img.shields.io/badge/✦%20Website-ousher.github.io-06b6d4?style=for-the-badge)](https://ousher.github.io/tia-framework/)

*MIT-0 · Built in 2026 · ⚡*

</div>
