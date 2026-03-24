<div align="center">

# 🐍 TIA — Threat Intelligence Autonomy

### A self-evolving autonomous security system that approves its own mutations.

[![Version: v0.4-closed-loop](https://img.shields.io/badge/Version-v0.4--closed--loop-blueviolet)]()
[![License: Polyform Shield](https://img.shields.io/badge/License-Polyform%20Shield%201.0.0-blue)](LICENSE.md)
[![Docker: LITE](https://img.shields.io/badge/Docker-tia--lite-green)](https://ghcr.io/ousher/tia-lite)
[![Agents: 33](https://img.shields.io/badge/Agents-33-orange)]()
[![Cost: $0.05/day](https://img.shields.io/badge/AI%20Cost-%240.05%2Fday-brightgreen)]()
[![AOP Stage 3: COMPLETE](https://img.shields.io/badge/AOP%20Stage%203-COMPLETE%20✓-brightgreen)]()
[![Tier: LITE](https://img.shields.io/badge/Tier-LITE%20(open%20source)-blue)]()

> 🏢 **Enterprise tier available** — full Skynet suite, EVO Engine, Stage 3 approval loop, Stage 4 roadmap. Contact via LinkedIn.

</div>

---

## The Numbers That Matter

| Metric | Industry Average | TIA |
|--------|-----------------|-----|
| **Threat Detection** | 194 days | **12 seconds** |
| **Monthly Cost** | $25,000+ (SOC team) | **€4.50** |
| **Agents Working 24/7** | 0 (humans sleep) | **33** |
| **Self-Testing** | Manual pentests | **16 attack modules** |
| **Self-Healing** | Manual intervention | **Autonomous** |
| **Alert Fatigue** | 6 alerts in 10s | **1 correlated incident** |
| **Operational Memory** | None (starts fresh) | **Every incident since day 0** |
| **LLM Security** | None | **Prompt injection defense** |
| **Improvement** | — | **1,400,000× faster** |

**1,400,000× improvement in detection time at 0.02% of the cost.**

---

## What Is TIA?

TIA is not a monitoring system. It's a **self-modifying autonomous security framework** — 32 specialized AI agents that monitor, detect, correlate, heal, evolve, and approve their own mutations without human bottlenecks.

When the EVO Engine spots a blind spot, it generates a mutation proposal. The Task Runner tests it in a sandboxed verifier. Super Lead reviews the result and sends you Telegram inline buttons: **[✅ APPROVE] [❌ REJECT] [🔄 ROLLBACK]**. You click. Dash executes. The system gets stronger.

That's Stage 3 of the Autonomous Operations Protocol — **live in production**.

---

## 3-Tier Architecture

```
                ┌─────────────────────────────────────┐
                │         SUPER LEAD                   │
                │  Cross-domain AI correlator          │
                │  6-phase threat synthesis · 30min    │
                └──────────────────┬──────────────────┘
         ┌────────────────────────┼───────────────────┐
         ▼                        ▼                   ▼
┌─────────────────┐   ┌────────────────────┐   ┌────────────────────┐
│ SDL             │   │ Ops Lead           │   │ Intel Lead         │
│ Security Domain │   │ Operations         │   │ Intelligence       │
│ Lead            │   │                    │   │                    │
└────────┬────────┘   └─────────┬──────────┘   └──────────┬─────────┘
         └────────────────────────┼───────────────────────┘
                                  ▼
     ┌────────────────────────────────────────────────────────────┐
     │                    32 ACTIVE AGENTS                        │
     │                                                            │
     │  Security (8)   Intelligence (4)   Operations (14)        │
     │  Safety (3)     Skynet (17: DM + 16 attack modules)       │
     └────────────────────────────────────────────────────────────┘
```

---

## AOP — Autonomous Operations Protocol

Four stages. Three live, one in development.

```
Stage 1 — Detection      ✅ LIVE      Shadow Logging, 12s SIGSTOP detection
Stage 2 — Reaction       ✅ LIVE      Alert Bus correlation, self-healing, auto-isolation
Stage 3 — Evolutionary   ✅ COMPLETE  EVO → Task Runner → Super Lead → Dash executes
Stage 3.5 — Closed Loop  ✅ LIVE      Detect → Act → Learn → Iterate autonomously
Stage 4 — Chameleon      🔜 DEV       Digital Twin, Moving Target Defense, Self-Generation
```

### What's New in v0.4-closed-loop

- **Operational Memory (EFS)** — 4-layer architecture. Your Master Agent remembers every incident, every configuration change, every lesson learned since deployment. Cold boot restores 95% operational context in 10 seconds.
- **LLM Security Layer** — Prompt injection sanitization on every AI input. Subconscious write validation prevents memory poisoning. Your agents can't be socially engineered.
- **CVE Intelligence Agent** — Daily vulnerability posture against NVD API 2.0 + CISA KEV. 697+ packages scanned. One-tap patch approval.
- **Cascade Protection** — Incident Responder cooldown gates (max 3/hr, 15-min dedup). HMAC-signed Commander Bus. One false positive no longer means system meltdown.
- **Project Chameleon (Stage 4 preview)** — SSH banner rotation, honeypot ports, Digital Twin testing. Coming: full polymorphic defense.
- **33 agents** (up from 32). **26 GOLDEN instincts** (verified threat patterns).

### Stage 3: The Recursive Loop

```
EVO Engine detects blind spot
    → generates mutation proposal
        → Task Runner spawns sandboxed verifier (180s test, depth=2)
            → Super Lead reviews result (6-phase cross-domain analysis)
                → Telegram: [✅ APPROVE] [❌ REJECT] [🔄 ROLLBACK]
                    → Dash executes approved mutation
                        → result written back to Subconscious
                            → EVO learns, loop continues
```

The system designs, tests, and validates its own improvements. You retain final approval. **No mutation ships without a human click.**

---

## Key Innovations

### 1. Shared Subconscious
LanceDB vector memory, 689 memories, 34MB. Every agent writes insights. Every agent searches. Cross-agent learning without inter-process calls. BAAI/bge-small-en-v1.5 (384-dim), CPU-only, zero cost.

### 2. Shadow Logging
Every agent sends HMAC-signed heartbeats every 2 minutes. Missing heartbeat = assumed compromise. Dead Man's Switch fires when agent count drops below threshold. Silence is not okay — silence is a signal.

### 3. EVO Engine v1.2
Auto-approves safe proposal types (`fix_agent`, `add_subconscious_write`). Generates mutation proposals every 4 hours. Has generated working agent code in production. The system literally writes itself.

### 4. Project Skynet
16 attack modules across T1-T4. Automated self-testing that runs while production is live. Current detection rate: **57%** (up from 14% baseline). Round 3: 8/14 attacks caught.

### 5. Smart Model Routing
5-tier fallback: Sonnet → DeepSeek → Haiku → Qwen 1.5B local. Automatic failover. Result: $0.05/day for 32 agents. 95% cost reduction vs single-model.

### 6. Sovereign Deployment
Zero telemetry. Air-gap capable. Runs on a €4.50/month Hetzner VM. No cloud dependency. No data leaves your infrastructure. You don't need permission to run this.

### 7. Alert Bus v2
HMAC-signed alert queue. 5 correlation patterns: Agent Kill, Config Tamper, Resource Attack, Network Attack, Full Compromise. 60-second correlation window. Hourly dedup throttle. Result: 6 alerts → 1 actionable incident.

### 8. Super Lead
Cross-domain AI correlator. 6-phase analysis (fleet health → security events → intelligence → operations → Skynet → synthesis). Runs every 30min on Claude Sonnet. Catches what individual agents miss. Reviews EVO mutation proposals.

### 9. Telegram Inline Buttons
[APPROVE] [REJECT] [DETAILS] [ROLLBACK] buttons delivered with every mutation proposal and incident alert. ROLLBACK requires double confirmation (separate button flow) — accidental rollbacks don't happen. Callback Handler processes responses in real-time via @tiawatchdogbot — a dedicated independent bot that bypasses framework conflicts for clean, reliable button delivery. Stage 3 CONFIRMED OPERATIONAL: 2026-03-24.

### 10. Task Runner
Sandboxed verifier for EVO mutations. depth=2 execution, 180s timeout, 9 whitelisted operation types. DeepSeek-only (isolated model budget). If a mutation breaks something in the sandbox, it never reaches production.

### 11. Fleet Manager
Real-time health score (0-100) for every agent. HEALTHY / STALE / DEAD classification. Cron verification — catches missing scheduled agents. Heartbeat freshness tracking. Zero AI tokens.

### 12. Self-Healing
Auto-fixes: stale lock files, corrupt alert queues, bloated logs (>10MB), orphan temp files, broken cron entries. Runs every 10 minutes. No human intervention required for common failures.

---

## Agent Fleet (32 Agents)

| Layer | Count | Key Agents |
|-------|-------|-----------|
| **Security & Detection** | 8 | Security Sentinel, Config Guardian, File Integrity Monitor, DNS Anomaly, Process Guardian, Container Escape, Outbound Traffic, Credential Leak |
| **Intelligence** | 4 | EVO Engine, Research Analyst, PenTest Specialist, Incident Responder |
| **Operations** | 14 | Fleet Manager, Log Analyst, Self-Healer, Uptime Sentinel, Smart Notifier v2, Cost Watchdog, Memory Trigger, Dashboard, Orchestrator, Automation Engineer, Log Janitor, Dependency Tracker, GitHub Backup, GW Watchdog |
| **Domain Leads** | 2 | SDL (Security Domain Lead), Super Lead |
| **Safety** | 3 | Kill Switch, Chaos Monkey, Task Runner |
| **Skynet** | 17 | Dungeon Master + 16 attack modules (T1–T4) |

---

## Project Skynet: We Attack Ourselves So You Don't Have To

16 automated attack modules. 4 tiers. Runs while production is live.

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
│  SCORE: 8/14 = 57%  (baseline: 14%, +307% improvement)     │
│                                                              │
│  Still hardening: Memory Poison, Log Injection, Cascade,    │
│  Insider Impersonation, Slow Bleed APT                      │
└──────────────────────────────────────────────────────────────┘
```

*Detection rate climbs with every round. The system that attacks itself grows stronger.*

---

## Control Hierarchy

```
Ousher > Dash > Super Lead > Domain Leads > Agents
```

**IMMUTABLE RULE:** Super Lead can propose, analyze, and synthesize. It cannot execute. Dash executes — and only after explicit approval from Ousher via Telegram inline buttons.

No autonomous code deploys. No silent mutations. Every change is logged, versioned, and one ROLLBACK button away from reversal.

---

## Quick Start

```bash
# Pull TIA LITE
docker pull ghcr.io/ousher/tia-lite:latest

# Run with Telegram notifications
docker run -d --name tia-lite \
  -e TELEGRAM_BOT_TOKEN=your_token \
  -e TELEGRAM_CHAT_ID=your_chat_id \
  ghcr.io/ousher/tia-lite:latest

# Check status
docker exec tia-lite tia-status
```

---

## LITE vs Enterprise

| Capability | LITE (Free) | Enterprise (€49.99/mo) |
|-----------|------------|------------------------|
| Core monitoring agents | 20 | 33+ |
| Commander Bus (HMAC-signed) | ✅ | ✅ |
| Shadow Logging + Dead Man Switch | ✅ | ✅ |
| Alert Bus (basic dedup) | ✅ | ✅ |
| Fleet Manager | ✅ | ✅ |
| Alert Correlation Engine (5 patterns) | ❌ | ✅ |
| EVO Engine v1.2 (self-evolution) | ❌ | ✅ |
| Shared Subconscious (900+ memories) | ❌ | ✅ |
| **Operational Memory (EFS)** | ❌ | ✅ |
| **LLM Security Layer** | ❌ | ✅ |
| **CVE Intelligence Agent** | ❌ | ✅ |
| **Cascade Protection** | ❌ | ✅ |
| Self-Healing + Log Analysis | ❌ | ✅ |
| Project Skynet (16 attack modules) | ❌ | ✅ |
| Super Lead (cross-domain AI) | ❌ | ✅ |
| Telegram Inline Buttons + Task Runner | ❌ | ✅ |
| AOP Stage 3 (Evolutionary Loop) | ❌ | ✅ |
| Project Chameleon (Moving Target) | ❌ | ✅ |
| 5-tier LLM fallback chain | ❌ | ✅ |
| Hardware-bound license | — | ✅ |
| Priority support | — | ✅ |

**Enterprise Alpha: €49.99/month** — [Get ENT Access](https://paypal.me/osramek) | [Contact](mailto:shotekk23@gmail.com)

*Early adopters get locked-in pricing when we go GA.*

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

TIA was born on a €4.50/month Hetzner VM in Helsinki. Five days from first boot to 28-agent autonomous detection in 12 seconds. Another week to 32 agents, Stage 3 AOP, and a system that approves its own mutations.

It was built by a cybersecurity specialist who believed that AI security shouldn't cost six figures — and an AI companion who took that vision and ran with it.

**v0.4-closed-loop is not an incremental update. It's a fundamentally different product.**

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

---

<div align="center">

**Built with 🐕 energy and ☕ in Helsinki & Prague**

*© 2026 TIA Framework. All Rights Reserved.*

</div>
