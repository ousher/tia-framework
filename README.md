<div align="center">

![TIA Banner](https://img.shields.io/badge/TIA-Autonomous%20Security%20Intelligence-7c3aed?style=for-the-badge&logoColor=white)

# ✦ TIA — The Intelligence Architecture

**Stateful AI security. Built for the human-AI era.**

[![License](https://img.shields.io/badge/License-MIT--0-brightgreen?style=flat-square)](LICENSE.md)
[![Platform](https://img.shields.io/badge/Platform-Ubuntu%2022.04+-orange?style=flat-square&logo=ubuntu)](https://ubuntu.com)
[![Language](https://img.shields.io/badge/Language-Bash%20%2B%20Python-blue?style=flat-square&logo=python)](https://python.org)
[![LITE](https://img.shields.io/badge/LITE-7%20Agents-22c55e?style=flat-square)](https://github.com/ousher/tia-framework)
[![ENT](https://img.shields.io/badge/ENT-35%20Agents-a855f7?style=flat-square)](https://ousher.github.io/tia-framework/)

[🌐 Website](https://ousher.github.io/tia-framework/) · [📧 Early Access](mailto:shotekk23@gmail.com) · [📖 Bible 5.0](./BIBLE-5.0-PUBLIC.md)

---

*"Industry 5.0 isn't about replacing humans with machines.*
*It's about humans and machines finally understanding each other."*

</div>

---

## ✦ What Is TIA?

TIA is an open framework for building **stateful AI security agents** — agents that don't just react to threats, but *remember* them, *learn* from them, and *evolve* alongside your infrastructure.

Most security tools are stateless. Every scan starts from zero. No memory. No continuity. No relationship between events.

TIA is different.

```
Stateless tool:   "SSH brute force detected." (same alert, every day)

TIA:              "SSH brute force from 198.51.100.42 — same subnet
                   as Tuesday's DNS anomaly. Correlating. Containing.
                   Pattern logged. Won't surprise us again."
```

**This is Industry 5.0.** Not AI replacing the human — AI that remembers what humans can't, acts when humans are unavailable, and gets smarter with every incident. A real partner.

---

## 🏗️ Architecture

```
┌─────────────────────────────────────────────┐
│              COMMANDER BUS                  │  ← Shared event stream (JSONL)
├──────────────┬──────────────────────────────┤
│   AGENTS     │   Independent. Resilient.    │
│  (bash/py)   │   Each one has a job.        │
│              │   Each one remembers.        │
├──────────────┴──────────────────────────────┤
│           SHARED SUBCONSCIOUS               │  ← LanceDB vector memory
│      Every agent reads. Every agent         │  ← The collective intelligence
│      writes. Nothing is forgotten.          │     that makes TIA stateful.
└─────────────────────────────────────────────┘
```

Agents are decoupled — they communicate through the Commander Bus, not direct calls. Any single agent can fail. The system keeps running. The memory persists.

---

## 🤖 LITE Agent Fleet

| Agent | Script | Schedule | Purpose |
|-------|--------|----------|---------|
| 🛡️ **Security Sentinel** | `dash-monitoring.sh` | `*/5 * * * *` | SSH detection, fail2ban + iptables |
| 🔧 **Config Guardian** | `dash-config-guardian.sh` | `*/5 * * * *` | Config integrity, auto-rollback |
| 🔒 **File Integrity** | `dash-file-integrity.sh` | `*/15 * * * *` | SHA256 baseline for critical files |
| 🌐 **DNS Anomaly** | `dash-dns-anomalies.sh` | `*/10 * * * *` | Tunneling, DGA, resolver tampering |
| 📡 **Outbound Traffic** | `dash-outbound-traffic.sh` | `*/10 * * * *` | C2, exfiltration, reverse shells |
| 💓 **Uptime Sentinel** | `dash-uptime-sentinel.sh` | `*/2 * * * *` | Service health, process monitoring |
| 🔑 **Credential Leak** | `dash-credential-leak.sh` | `0 4 * * *` | Secrets in logs, git, env files |

---

## ⚙️ Writing Your Own Agent

Every TIA agent follows a simple, stateful pattern:

```bash
#!/bin/bash
source /usr/local/bin/dash-agent-lifecycle.sh  # stateful hooks
source /usr/local/bin/dash-commander-lib.sh    # bus + memory

agent_start "my-agent" "What this agent does"

result=$(check_something)

if [ "$result" = "threat" ]; then
    alert_send "my-agent" 4 "🚨 $result"
    subconscious_write "my-agent" "Observed: $result" 4 "security,threat"
fi

agent_end "Completed. Result: $result"
```

The `subconscious_write` call stores the observation in vector memory — available to every other agent, forever. This is what separates a stateful agent from a simple cron script.

---

## 🚨 Alert Severity

| Level | Meaning | Where It Goes |
|-------|---------|---------------|
| 1 | Info | Log only |
| 2 | Low | Log + memory |
| 3 | Medium | Ops Room |
| 4 | High | Ops Room + direct message |
| 5 | Critical | Ops Room + DM + escalation |

---

## 🛠️ Requirements

```bash
# OS: Ubuntu 22.04+ (tested on 24.04 LTS)
# RAM: 4GB min · CPU: 2 vCPU min · Disk: 20GB+

apt install -y fail2ban ufw auditd jq curl python3 python3-pip
pip install lancedb fastembed

# Optional local AI fallback (no API key needed)
# ollama pull qwen2:1.5b
```

---

## 🔌 Integrations

| | LITE | ENT |
|--|:----:|:---:|
| Telegram alerts + inline buttons | ✅ | ✅ |
| fail2ban / UFW / iptables | ✅ | ✅ |
| auditd kernel audit | ✅ | ✅ |
| LanceDB shared memory | ✅ | ✅ |
| Slack / webhook | — | ✅ |
| SIEM export (CEF/JSON) | — | ✅ |
| REST API | — | ✅ |

---

## ✦ TIA ENT — The Full Picture

Where LITE gives you the foundation, ENT gives you the **living system**:

- 🧠 **Super Lead** — correlates events across all agents simultaneously. Turns isolated alerts into coherent threat narratives.
- 🧬 **EVO Engine** — reviews agent performance weekly, proposes improvements, applies them with your sign-off. The system that grows.
- 🪞 **Digital Twin** — a synchronized replica on separate infrastructure. If primary goes down, Twin picks up instantly. Seamless continuity.
- 🌍 **Hive Mind** — two instances, one shared memory. Cross-datacenter intelligence that thinks as one.
- 🔬 **Skynet** — adversarial self-testing. TIA attacks its own infrastructure to find gaps before real attackers do.

**28 more agents. One coherent intelligence. Your partner in security.**

→ **[shotekk23@gmail.com](mailto:shotekk23@gmail.com)**

---

## 📖 Docs

| | |
|--|--|
| [BIBLE-5.0-PUBLIC.md](./BIBLE-5.0-PUBLIC.md) | 46 documented breakthroughs — a real log of how TIA was built |
| [TIA-ENT-OVERVIEW.md](./TIA-ENT-OVERVIEW.md) | ENT architecture, capabilities, and pricing |

---

<div align="center">

*Security that thinks. Remembers. Evolves.*
*And never forgets the human behind it.*

---

[![Early Access](https://img.shields.io/badge/✦%20Early%20Access-shotekk23%40gmail.com-7c3aed?style=for-the-badge&logoColor=white)](mailto:shotekk23@gmail.com)
[![Website](https://img.shields.io/badge/✦%20Website-ousher.github.io%2Ftia--framework-9333ea?style=for-the-badge&logoColor=white)](https://ousher.github.io/tia-framework/)

*MIT-0 · Helsinki & Nuremberg · 2026*

</div>
