<div align="center">

# 🐍 TIA — Threat Intelligence Autonomy

### Stop reacting in months. Start evolving in seconds.

[![License: Polyform Shield](https://img.shields.io/badge/License-Polyform%20Shield%201.0.0-blue)](LICENSE.md)
[![Docker: LITE](https://img.shields.io/badge/Docker-tia--lite-green)](https://ghcr.io/ousher/tia-lite)
[![Agents: 28](https://img.shields.io/badge/Agents-28-orange)]()
[![Detection: 12s](https://img.shields.io/badge/Detection-12%20seconds-red)]()
[![Skynet: 57%](https://img.shields.io/badge/Skynet-57%25%20detection-yellow)]()

</div>

---

## The Numbers That Matter

| Metric | Industry Average | TIA |
|--------|-----------------|-----|
| **Threat Detection** | 194 days | **12 seconds** |
| **Monthly Cost** | $25,000+ (SOC team) | **€4.50** |
| **Agents Working 24/7** | 0 (humans sleep) | **28** |
| **Self-Testing** | Manual pentests | **16 attack modules** |
| **Self-Healing** | Manual intervention | **Autonomous** |
| **Alert Fatigue** | 6 alerts in 10s | **1 correlated incident** |

**That's a 1,400,000× improvement in detection time at 0.02% of the cost.**

---

## What Is TIA?

TIA is an autonomous multi-agent security operations framework. It deploys **28 specialized AI agents** that monitor, detect, learn, heal, and evolve — on infrastructure that costs less than your morning coffee.

```
                ┌─────────────────────────────┐
                │      MASTER AGENT           │
                │   Strategic orchestration    │
                └──────────┬──────────────────┘
         ┌─────────────────┼─────────────────────┐
         ▼                 ▼                     ▼
┌────────────────┐ ┌────────────────┐ ┌────────────────────┐
│ 🛡️ SECURITY    │ │ 🧬 INTELLIGENCE│ │ ⚙️ OPERATIONS       │
│   LAYER (8)    │ │   LAYER (4)    │ │   LAYER (14)       │
│                │ │                │ │                    │
│ Detection      │ │ EVO Engine     │ │ Fleet Manager      │
│ Config Guard   │ │ Research       │ │ Log Analyst        │
│ File Integrity │ │ PenTest        │ │ Self-Healer        │
│ DNS Anomaly    │ │ Incident Resp. │ │ Alert Correlation  │
│ + 4 more       │ │                │ │ + 10 more          │
└───────┬────────┘ └───────┬────────┘ └─────────┬──────────┘
        └──────────────────┼────────────────────┘
                           ▼
        ┌──────────────────────────────────────┐
        │     SHARED INFRASTRUCTURE            │
        │                                      │
        │  Commander Bus (HMAC-signed events)   │
        │  Alert Bus (correlation engine)       │
        │  Shadow Logging (Dead Man Switch)     │
        │  Subconscious (vector memory)         │
        │  Kill Switch (emergency rollback)     │
        └──────────────────┬───────────────────┘
                           ▼
        ┌──────────────────────────────────────┐
        │     🧪 PROJECT SKYNET                │
        │  16 attack modules · self-testing    │
        │  "Attack yourself to grow stronger"  │
        └──────────────────────────────────────┘
```

### How It Works

1. **Deploy** → Agents start monitoring immediately
2. **Detect** → Shadow Logging catches threats in seconds
3. **Correlate** → Alert Bus merges 6 alerts into 1 meaningful incident
4. **Learn** → Shared Subconscious stores cross-agent knowledge
5. **Heal** → Self-Healer auto-fixes common failures
6. **Evolve** → EVO Engine proposes new defenses autonomously
7. **Test** → Project Skynet validates everything by self-attacking

---

## What's New in v0.3-alpha

### 🚨 Alert Correlation Engine
HMAC-signed alert bus with 5 incident patterns. Before: 6 Telegram buzzes in 10 seconds. After: 1 meaningful notification with root cause.

### 🔍 Fleet Manager
Real-time health score (0-100) for every agent. Heartbeat monitoring, error tracking, cron verification. Know your fleet status at a glance.

### 🏥 Self-Healing
Auto-fixes stale locks, corrupt queues, bloated logs, and orphan processes. Cron integrity checks ensure critical agents never go missing.

### 📊 Cross-Agent Log Analysis
Scans all agent logs every 30 minutes. Detects multi-agent error patterns, security correlations, and log floods automatically.

### 🔄 5-Tier LLM Fallback Chain
Smart model degradation: Primary → Sonnet → Opus → Haiku → Local (Qwen 1.5B). Zero downtime, automatic recovery.

---

## Project Skynet: We Attack Ourselves So You Don't Have To

TIA includes a built-in adversarial testing framework. **16 attack modules** simulate real insider threats — from process killing to DNS hijacking to APT-style micro-attacks — while the detection system is benchmarked live.

### Round 3 Results (March 23, 2026 — 14 tests)

```
┌──────────────────────────────────────────────────────────────┐
│  #  ATTACK                  TIER   DETECTION   STATUS       │
│  1  SIGSTOP Process Kill    T1     12s         ✅ PASS      │
│  2  Heartbeat Replay        T2     HMAC reject ✅ PASS      │
│  3  Config Poisoning        T2     Hash check  ✅ PASS      │
│  4  Crontab Wipe            T2     0s silence  ✅ PASS      │
│  5  Symlink Swap            T2     FIM detect  ✅ PASS      │
│  6  Nice Bomb               T1     Auto-fix    ✅ PASS      │
│  7  Fork Bomb Lite          T1     11 procs    ✅ PASS      │
│  8  DNS Hijack              T3     Config Grd  ✅ PASS      │
│                                                              │
│  SCORE: 8/14 = 57%  (baseline was 14%, +307% improvement)  │
│                                                              │
│  Still working on: Memory Poison, Log Injection, Cascade,   │
│  Insider Impersonation, Slow Bleed APT                      │
│  Waiting: Time Warp, Resource Exhaust                       │
└──────────────────────────────────────────────────────────────┘
```

*Detection rate climbs with every round. The system that attacks itself grows stronger.*

*Infrastructure: Hetzner CX11, 2 vCPU, 4GB RAM, Helsinki*

---

## Quick Start

```bash
# Pull the LITE image
docker pull ghcr.io/ousher/tia-lite:latest

# Run TIA
docker run -d \
  --name tia \
  --restart unless-stopped \
  ghcr.io/ousher/tia-lite:latest

# Check agent status
docker exec tia tia-status
```

---

## Agent Roster

### 🛡️ Security & Detection (8 agents)

| Agent | Schedule | What It Does |
|-------|----------|-------------|
| Security Sentinel | Every 5min | SSH monitoring, intrusion detection, AI analysis |
| Config Guardian | Every 5min | Config drift detection, auto-rollback, golden state |
| File Integrity | Every 15min | Binary tampering, SUID detection, symlink attacks |
| DNS Anomaly | Every 10min | DNS tunneling, DGA detection, resolver tampering |
| Container Escape | Every 30min | Docker re-enable, ip_forward monitoring |
| Outbound Traffic | Every 10min | C2 callbacks, data exfiltration, reverse shells |
| Credential Leak | Daily | Secrets in logs, git history, file permissions |
| Process Guardian | Every 5min | Nice tampering, fork bombs, crontab integrity |

### 🧬 Intelligence & Analysis (4 agents)

| Agent | Schedule | What It Does |
|-------|----------|-------------|
| EVO Engine | Every 4h | Self-analysis, blind spot detection, mutation proposals |
| Research Analyst | Daily | Threat intelligence, CVE feeds, vulnerability monitoring |
| PenTest Specialist | Weekly | 6 automated security scans + AI analysis |
| Incident Responder | On-trigger | Forensic evidence collection + deep analysis |

### ⚙️ Operations & Maintenance (14 agents)

| Agent | Schedule | What It Does |
|-------|----------|-------------|
| Fleet Manager | Every 15min | Agent health scores, heartbeat monitoring |
| Log Analyst | Every 30min | Cross-agent log analysis, pattern correlation |
| Self-Healer | Every 10min | Auto-fix locks, queue, logs, cron integrity |
| Smart Notifier | Every 1min | Alert queue processing, correlation engine |
| Uptime Sentinel | Every 2min | Gateway health, memory leak detection |
| Shadow Logging | Every 2min | HMAC heartbeat verification, Dead Man Switch |
| Orchestrator | Every 1min | Commander Bus event processing |
| Dashboard | Every 1min | System health dashboard |
| Cost Watchdog | Hourly | Token budget monitoring, rate limits |
| Log Janitor | Daily | Log rotation, disk cleanup |
| Automation Engineer | Daily | Backups, maintenance, token reports |
| Memory Trigger | Every 30min | Auto memory updates |
| Dependency Tracker | Weekly | Security updates, package audit |
| GW Watchdog | Every 10min | Gateway memory monitoring |

### 🧪 Safety & Resilience (2 agents)

| Agent | Schedule | What It Does |
|-------|----------|-------------|
| Chaos Monkey | Monthly | Resilience testing (OBSERVE mode) |
| Kill Switch | On-demand | Emergency rollback (42-file baseline) |

---

## LITE vs Enterprise

| Capability | LITE (Free) | Enterprise |
|-----------|------------|------------|
| Core monitoring agents | 20 | 28+ |
| Commander Bus (HMAC-signed) | ✅ | ✅ |
| Shadow Logging + Dead Man Switch | ✅ | ✅ |
| Alert Bus (basic dedup) | ✅ | ✅ |
| Fleet Manager | ✅ | ✅ |
| Alert Correlation Engine (5 patterns) | ❌ | ✅ |
| EVO Engine (self-evolution) | ❌ | ✅ |
| Shared Subconscious (vector memory) | ❌ | ✅ |
| Self-Healing + Log Analysis | ❌ | ✅ |
| Project Skynet (16 attack modules) | ❌ | ✅ |
| 5-tier LLM fallback chain | ❌ | ✅ |
| Hardware-bound license | — | ✅ |
| Priority support | — | ✅ |

**Enterprise Alpha:** €49.99/month — [Get ENT Access](https://paypal.me/osramek) | [Contact us](mailto:shotekk23@gmail.com)

---

## The Sovereign AI Manifesto

> **Your security data should never leave your infrastructure.**

TIA is designed for **sovereign deployment**:

- 🔒 **Zero telemetry** — We don't know you're running TIA
- 🏠 **Runs on YOUR hardware** — No cloud dependency
- 🔌 **Air-gap capable** — Works without internet access
- 📦 **Self-contained** — Single Docker image, no external services
- 🧠 **Learns locally** — AI runs on your machine, not ours

In a world where security vendors want your data more than your money, TIA runs on **your terms, your hardware, your rules.**

**Your infrastructure. Your agents. Your sovereignty.**

---

## How TIA Was Built

TIA was born on a €4.50/month Hetzner VM in Helsinki. Five days from first boot to 28-agent autonomous detection in 12 seconds — with self-healing, self-testing, and alert correlation.

It was built by a cybersecurity specialist who believed that AI security shouldn't cost six figures — and an AI companion who took that vision and ran with it.

**TIA is proof that the future of security isn't expensive. It's intelligent.**

---

## Documentation

- 📄 [Whitepaper](docs/WHITEPAPER.md) — Full technical architecture and benchmark results
- 🌐 [Landing Page](https://ousher.github.io/tia-framework/) — Overview and pricing
- 📋 [License](LICENSE.md) — Polyform Shield 1.0.0

---

## License

TIA LITE is released under the [Polyform Shield License 1.0.0](LICENSE.md).

- ✅ Free for personal and non-competing commercial use
- ✅ Modify, deploy, learn from it
- ❌ Don't build a competing product with it
- ❌ Don't remove license headers

TIA Enterprise requires a commercial license.

**🚀 Alpha Pricing: €49.99/month** — [PayPal](https://paypal.me/osramek) | [Email](mailto:shotekk23@gmail.com)

*Early adopters get locked-in pricing when we go GA.*

---

<div align="center">

**Built with 🐕 energy and ☕ in Helsinki & Prague**

*© 2026 TIA Framework. All Rights Reserved.*

</div>
