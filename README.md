<div align="center">

![TIA Banner](https://img.shields.io/badge/TIA-Autonomous%20Security%20Intelligence-7c3aed?style=for-the-badge&logo=shield&logoColor=white)

# ⚡ TIA — Autonomous Security Intelligence

**Open framework for autonomous AI security agents.**

[![License](https://img.shields.io/badge/License-MIT--0-green?style=flat-square)](LICENSE.md)
[![Platform](https://img.shields.io/badge/Platform-Ubuntu%2022.04+-orange?style=flat-square&logo=ubuntu)](https://ubuntu.com)
[![Language](https://img.shields.io/badge/Language-Bash%20%2B%20Python-blue?style=flat-square&logo=python)](https://python.org)
[![Agents](https://img.shields.io/badge/LITE-7%20Agents-22c55e?style=flat-square)](https://github.com/ousher/tia-framework)
[![ENT](https://img.shields.io/badge/ENT-35%20Agents-a855f7?style=flat-square)](https://ousher.github.io/tia-framework/)

[🌐 Product Page](https://ousher.github.io/tia-framework/) · [📧 ENT Early Access](mailto:shotekk23@gmail.com) · [📖 Bible 5.0](./BIBLE-5.0-PUBLIC.md)

</div>

---

## 🏗️ Architecture Overview

TIA is built around three layers:

```
┌─────────────────────────────────────────────┐
│              COMMANDER BUS                  │  ← Central event bus (JSONL)
├──────────────┬──────────────────────────────┤
│   AGENTS     │   Each agent:                │
│  (bash/py)   │   - Runs on cron schedule    │
│              │   - Writes to Commander Bus  │
│              │   - Reads shared state       │
├──────────────┴──────────────────────────────┤
│           SHARED SUBCONSCIOUS               │  ← LanceDB vector memory
│         (cross-agent memory)                │  ← All agents read/write
└─────────────────────────────────────────────┘
```

**Key principle:** Agents are independent. They communicate via the Commander Bus, not direct calls. Any agent can fail — the system keeps running.

---

## 🤖 LITE Agent Fleet

7 core agents included in this repo:

| Agent | Script | Schedule | What It Does |
|-------|--------|----------|--------------|
| 🛡️ **Security Sentinel** | `dash-monitoring.sh` | `*/5 * * * *` | SSH brute-force detection, fail2ban + iptables integration |
| 🔧 **Config Guardian** | `dash-config-guardian.sh` | `*/5 * * * *` | Monitors critical configs, auto-rollback on tampering |
| 🔒 **File Integrity** | `dash-file-integrity.sh` | `*/15 * * * *` | SHA256 baseline for 16 critical binaries + configs |
| 🌐 **DNS Anomaly** | `dash-dns-anomalies.sh` | `*/10 * * * *` | DNS tunneling, DGA detection, resolver tampering |
| 📡 **Outbound Traffic** | `dash-outbound-traffic.sh` | `*/10 * * * *` | C2 callbacks, data exfiltration, reverse shells |
| 💓 **Uptime Sentinel** | `dash-uptime-sentinel.sh` | `*/2 * * * *` | Service health monitoring, process conflict detection |
| 🔑 **Credential Leak** | `dash-credential-leak.sh` | `0 4 * * *` | Secrets in logs, git history, env files |

---

## ⚙️ How Agents Work

Every agent follows the same pattern:

```bash
#!/bin/bash
source /usr/local/bin/dash-agent-lifecycle.sh  # lifecycle hooks
source /usr/local/bin/dash-commander-lib.sh    # commander bus + subconscious

agent_start "my-agent" "Brief description"

# --- do your work ---
result=$(check_something)

if [ "$result" = "threat" ]; then
    alert_send "my-agent" 4 "🚨 Threat detected: $result"
    subconscious_write "my-agent" "Threat: $result" 4 "security,threat"
fi

agent_end "Done. Found: $result"
```

**Lifecycle hooks** guarantee that every run is logged to the Commander Bus — even crashes.

---

## 🚨 Alert Routing

Alerts are severity-based:

| Severity | Level | Routing |
|----------|-------|---------|
| 1 | INFO | Log only |
| 2 | LOW | Log + Subconscious |
| 3 | MEDIUM | Ops Room notification |
| 4 | HIGH | Ops Room + DM |
| 5 | CRITICAL | Ops Room + DM + escalation |

```bash
# Send an alert from any agent
alert_send "agent-name" 4 "🚨 Message here"
```

---

## 📁 Repo Structure

```
tia-framework/
├── README.md                  # This file
├── BIBLE-5.0-PUBLIC.md        # Development log (46 emergences)
├── TIA-ENT-OVERVIEW.md        # ENT capabilities & pricing
├── LICENSE.md                 # MIT-0
└── index.html                 # GitHub Pages landing page
```

> 🔒 Agent scripts, EVO engine, Subconscious DB, and AOP loop are **ENT only** — not in this repo.

---

## 🛠️ Requirements

```
OS:      Ubuntu 22.04+ (tested on 24.04)
RAM:     4GB minimum (8GB recommended for ENT)
CPU:     2 vCPU minimum
Disk:    20GB+
Deps:    bash, python3, fail2ban, ufw, auditd
Optional: Telegram bot token (for alerts)
```

---

## 📦 Dependencies

```bash
# Core
apt install -y fail2ban ufw auditd jq curl python3

# Python (for subconscious / vector memory)
pip install lancedb fastembed

# Optional: local AI fallback
# ollama pull qwen2:1.5b
```

---

## 🔌 Integrations

| Integration | Status | Notes |
|-------------|--------|-------|
| Telegram | ✅ LITE | Alerts + inline buttons |
| fail2ban | ✅ LITE | Auto-ban on detection |
| UFW / iptables | ✅ LITE | Dynamic rule injection |
| auditd | ✅ LITE | Kernel-level audit trail |
| Slack | 🔒 ENT | Webhook integration |
| SIEM export | 🔒 ENT | CEF/JSON format |
| API | 🔒 ENT | REST API for dashboards |

---

## 📖 Documentation

- **[BIBLE-5.0-PUBLIC.md](./BIBLE-5.0-PUBLIC.md)** — 46 documented development breakthroughs. Real conversations, real decisions, real framework. Not theory.
- **[TIA-ENT-OVERVIEW.md](./TIA-ENT-OVERVIEW.md)** — Full ENT capabilities, architecture, pricing.

---

## 🔒 TIA ENT

The full autonomous SOC. 35 agents. Self-learning. Air-gapped.

**What ENT adds on top of LITE:**
- 🧠 **Super Lead** — cross-domain threat correlation (network + identity + process + file)
- 🧬 **EVO Engine** — self-learning, proposes and applies improvements weekly
- 🪞 **Digital Twin** — hot standby on separate infrastructure (auto-failover)
- 💀 **Skynet** — 16 adversarial modules that attack your own system to find gaps
- 📊 **Fleet Manager** — unified health score across all 35 agents
- 🤖 **28 more agents** covering APT detection, container escapes, port shuffling, and more

**→ [shotekk23@gmail.com](mailto:shotekk23@gmail.com) for early access**

---

<div align="center">

[![Contact](https://img.shields.io/badge/ENT%20Early%20Access-shotekk23%40gmail.com-7c3aed?style=for-the-badge&logoColor=white)](mailto:shotekk23@gmail.com)
[![Web](https://img.shields.io/badge/Product%20Page-ousher.github.io-06b6d4?style=for-the-badge&logoColor=white)](https://ousher.github.io/tia-framework/)

*MIT-0 — Free to use, modify, redistribute. No attribution required.*  
*Built in Helsinki & Nuremberg · 2026 · ⚡*

</div>
