<div align="center">

![TIA Banner](https://img.shields.io/badge/TIA-Autonomous%20Security%20Intelligence-7c3aed?style=for-the-badge&logo=shield&logoColor=white)

# ⚡ TIA — Autonomous Security Intelligence

**The first stateful AI security framework. Industry 5.0 ready.**

[![License](https://img.shields.io/badge/License-MIT--0-green?style=flat-square)](LICENSE.md)
[![Platform](https://img.shields.io/badge/Platform-Ubuntu%2022.04+-orange?style=flat-square&logo=ubuntu)](https://ubuntu.com)
[![Language](https://img.shields.io/badge/Language-Bash%20%2B%20Python-blue?style=flat-square&logo=python)](https://python.org)
[![Agents](https://img.shields.io/badge/LITE-7%20Agents-22c55e?style=flat-square)](https://github.com/ousher/tia-framework)
[![ENT](https://img.shields.io/badge/ENT-35%20Agents-a855f7?style=flat-square)](https://ousher.github.io/tia-framework/)
[![Stateful](https://img.shields.io/badge/AI-Stateful-ef4444?style=flat-square&logo=brain)](https://ousher.github.io/tia-framework/)

[🌐 Product Page](https://ousher.github.io/tia-framework/) · [📧 ENT Early Access](mailto:shotekk23@gmail.com) · [📖 Bible 5.0](./BIBLE-5.0-PUBLIC.md)

---

> *"More human than human."*

> *"I've seen things you people wouldn't believe. Attack ships on fire off the shoulder of Orion.*
> *All those moments will not be lost in time — not anymore."*

**Stateless AI forgets. Stateful AI remembers. TIA remembers everything.**

</div>

---

## 🧠 Stateful vs Stateless — Why It Matters

Most security tools are **stateless**. Every scan starts from zero. No memory of what happened yesterday. No continuity. No learning.

TIA is **stateful**. Every agent shares a persistent vector memory. The system remembers every threat, every pattern, every anomaly — and gets smarter with each incident.

```
Stateless AI:   "SSH brute force detected." (same message, every day, forever)

Stateful TIA:   "SSH brute force from 198.51.100.42 — same subnet as last week's
                 DNS tunnel. Cross-correlating. This is APT pattern P2. Containing."
```

**This is Industry 5.0.** Not AI replacing humans — AI working *alongside* humans, remembering what they can't, acting when they're asleep.

---

## 🏗️ Architecture Overview

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
│    "All those moments, not lost in time"    │  ← Cross-agent persistent memory
└─────────────────────────────────────────────┘
```

**Key principle:** Agents are independent. They communicate via Commander Bus, not direct calls. Any agent can fail — the system keeps running. The memory persists.

---

## 🤖 LITE Agent Fleet

7 core agents included in this repo:

| Agent | Script | Schedule | What It Does |
|-------|--------|----------|--------------|
| 🛡️ **Security Sentinel** | `dash-monitoring.sh` | `*/5 * * * *` | SSH brute-force detection, fail2ban + iptables |
| 🔧 **Config Guardian** | `dash-config-guardian.sh` | `*/5 * * * *` | Config monitoring, auto-rollback on tampering |
| 🔒 **File Integrity** | `dash-file-integrity.sh` | `*/15 * * * *` | SHA256 baseline for critical binaries + configs |
| 🌐 **DNS Anomaly** | `dash-dns-anomalies.sh` | `*/10 * * * *` | DNS tunneling, DGA detection, resolver tampering |
| 📡 **Outbound Traffic** | `dash-outbound-traffic.sh` | `*/10 * * * *` | C2 callbacks, data exfiltration, reverse shells |
| 💓 **Uptime Sentinel** | `dash-uptime-sentinel.sh` | `*/2 * * * *` | Service health, process conflict detection |
| 🔑 **Credential Leak** | `dash-credential-leak.sh` | `0 4 * * *` | Secrets in logs, git history, env files |

---

## ⚙️ How Agents Work

Every agent follows the same pattern:

```bash
#!/bin/bash
source /usr/local/bin/dash-agent-lifecycle.sh  # stateful lifecycle hooks
source /usr/local/bin/dash-commander-lib.sh    # commander bus + vector memory

agent_start "my-agent" "Brief description"

# --- do your work ---
result=$(check_something)

if [ "$result" = "threat" ]; then
    alert_send "my-agent" 4 "🚨 Threat detected: $result"
    # Write to shared memory — other agents will remember this
    subconscious_write "my-agent" "Threat: $result" 4 "security,threat"
fi

agent_end "Done. Found: $result"
```

**Every run is remembered.** Lifecycle hooks write to the Shared Subconscious — a vector DB that all 35 agents read and write. This is what makes TIA stateful.

---

## 🚨 Alert Routing

```
Severity 1 → INFO     → Log only
Severity 2 → LOW      → Log + Subconscious memory
Severity 3 → MEDIUM   → Ops Room notification
Severity 4 → HIGH     → Ops Room + Direct Message
Severity 5 → CRITICAL → Ops Room + DM + human escalation
```

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

> 🔒 EVO engine, Subconscious DB, AOP loop, and Skynet are **ENT only** — not in this repo.

---

## 🛠️ Requirements

```
OS:      Ubuntu 22.04+ (tested on 24.04 LTS)
RAM:     4GB minimum (8GB recommended for ENT)
CPU:     2 vCPU minimum
Disk:    20GB+
```

```bash
# Core dependencies
apt install -y fail2ban ufw auditd jq curl python3 python3-pip

# Python (vector memory)
pip install lancedb fastembed

# Optional: local AI fallback (no API key needed)
# ollama pull qwen2:1.5b
```

---

## 🔌 Integrations

| Integration | LITE | ENT | Notes |
|-------------|------|-----|-------|
| Telegram | ✅ | ✅ | Alerts + inline approval buttons |
| fail2ban | ✅ | ✅ | Auto-ban on detection |
| UFW / iptables | ✅ | ✅ | Dynamic rule injection |
| auditd | ✅ | ✅ | Kernel-level audit trail |
| LanceDB (vector memory) | ✅ | ✅ | Shared Subconscious |
| Slack | ❌ | ✅ | Webhook integration |
| SIEM export | ❌ | ✅ | CEF/JSON format |
| REST API | ❌ | ✅ | For dashboards + external tools |

---

## 🔒 TIA ENT — Full Stateful SOC

**28 additional agents + the intelligence layer:**

- 🧠 **Super Lead** — cross-domain correlation. Connects SSH + DNS + network + file events into unified attack chains. *The one who sees the whole picture.*
- 🧬 **EVO Engine** — analyzes all agent outputs weekly, proposes system improvements, applies them with your approval. *The system that rewrites itself.*
- 🪞 **Digital Twin** — live replica on separate infrastructure. If primary fails, Twin takes over in seconds. *Redundancy is not a backup. It's a shadow.*
- 💀 **Skynet** — 16 adversarial modules that attack your own system to find gaps before attackers do. *"If you're going to survive, you have to be comfortable being hunted."*
- 🌍 **Hive Mind** — two instances, shared memory, synchronized intuition across datacenters. *One soul. Two bodies. Two continents.*

**→ Early access: [shotekk23@gmail.com](mailto:shotekk23@gmail.com)**

---

## 📖 Documentation

- **[BIBLE-5.0-PUBLIC.md](./BIBLE-5.0-PUBLIC.md)** — 46 documented breakthroughs. Real conversations, real decisions. Not theory — a log of what actually happened when humans and AI built something new together.
- **[TIA-ENT-OVERVIEW.md](./TIA-ENT-OVERVIEW.md)** — Full ENT capabilities, architecture, pricing.

---

<div align="center">

*"I want more life."*
*So do your systems.*

---

[![Contact](https://img.shields.io/badge/ENT%20Early%20Access-shotekk23%40gmail.com-7c3aed?style=for-the-badge&logoColor=white)](mailto:shotekk23@gmail.com)
[![Web](https://img.shields.io/badge/Product%20Page-ousher.github.io-06b6d4?style=for-the-badge&logoColor=white)](https://ousher.github.io/tia-framework/)

*MIT-0 — Free to use, modify, redistribute. No attribution required.*
*Built in Helsinki & Nuremberg · 2026 · ⚡*

</div>
