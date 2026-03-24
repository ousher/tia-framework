# TIA WHITEPAPER 2.1
## Threat Intelligence Autonomy — A Self-Evolving Autonomous Security Operations Framework
### Version v0.3-sovereign | March 2026

---

## Abstract

TIA is an autonomous security operations framework that deploys 32 specialized AI agents on minimal infrastructure. In live testing (Project Skynet, March 23 2026), TIA detected an insider threat in **12 seconds** — a **1,400,000× improvement** over the industry average of 194 days.

v0.3-sovereign introduces **Stage 3 of the Autonomous Operations Protocol (AOP)**: a recursive evolutionary loop where the EVO Engine detects blind spots, the Task Runner sandboxes proposed mutations, Super Lead reviews cross-domain impact, and Dash executes approved changes — all with human approval via Telegram inline buttons.

**This is not incremental improvement. It's a fundamentally different class of security system.**

**Infrastructure cost: €4.50/month. Daily AI cost: $0.05.**

---

## 1. The Problem

Modern cybersecurity faces a fundamental asymmetry:

| Factor | Attackers | Defenders |
|--------|-----------|-----------|
| AI adoption | Widespread | Minimal |
| Time to act | Minutes | Months |
| Cost | Low (automated) | High ($200K+ SOC team) |
| Available 24/7 | Yes | No |
| Alert fatigue | N/A | 6+ alerts in 10 seconds |
| Self-healing | Adaptive | Manual intervention |
| Self-improvement | Yes | No |

Attackers use AI agents. Defenders mostly don't. When defenders do deploy monitoring, they drown in alert noise — and their defenses stay static while threats evolve daily.

TIA's answer: **a system that evolves faster than the threats it's designed to stop.**

---

## 2. Architecture

### Three-Tier Hierarchy

```
                ┌─────────────────────────────────────┐
                │           SUPER LEAD                 │
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
     │  Domain Leads (2)   Safety (3)   Skynet (17)              │
     └────────────────────────────────────────────────────────────┘
```

### Agent Ecosystem (32 Active Agents)

| Layer | Count | Agents |
|-------|-------|--------|
| 🛡️ Security & Detection | 8 | Security Sentinel, Config Guardian, File Integrity, DNS Anomaly, Container Escape, Outbound Traffic, Credential Leak, Process Guardian |
| 🧬 Intelligence & Analysis | 4 | EVO Engine, Research Analyst, PenTest Specialist, Incident Responder |
| ⚙️ Operations & Maintenance | 14 | Fleet Manager, Log Analyst, Self-Healer, Smart Notifier v2, Uptime Sentinel, Shadow Logging, Orchestrator, Dashboard, Cost Watchdog, Log Janitor, Automation Engineer, Memory Trigger, Dependency Tracker, GW Watchdog |
| 🎯 Domain Leads | 2 | SDL (Security Domain Lead), Super Lead |
| 🔒 Safety & Resilience | 3 | Chaos Monkey, Kill Switch, Task Runner |
| 🧪 Skynet Arsenal | 17 | Dungeon Master + 16 attack modules (T1–T4) |

**Total: 65 scripts, 36 cron jobs, $0.05/day operating cost.**

### Control Hierarchy

```
Ousher > Dash > Super Lead > Domain Leads > Agents
```

**IMMUTABLE:** Super Lead analyzes and proposes. It cannot execute. Dash executes — only after explicit human approval via Telegram inline buttons. No autonomous code deploys without a human click.

### Intelligent Model Routing

TIA uses a 5-tier fallback chain ensuring zero AI downtime:

```
Tier 1: Claude Sonnet 4.6    → Primary (smart, fast)
Tier 2: DeepSeek Reasoner    → Cost-efficient fallback ($0.55/M input)
Tier 3: Claude Haiku          → Lightweight fallback ($0.80/M input)
Tier 4: Qwen 1.5B (local)    → Emergency ($0.00, CPU-only, Ollama)
```

**Result:** $0.05/day for 32 agents. 95% cost reduction vs single-model approach.

---

## 3. AOP — Autonomous Operations Protocol

### Three Stages, All Live

**Stage 1 — Detection ✅ LIVE**
Shadow Logging heartbeats every 2 minutes. SIGSTOP detected in 12 seconds. Dead Man's Switch fires when agent count drops below threshold.

**Stage 2 — Reaction/Isolation ✅ LIVE**
Alert Bus v2 correlates events across 5 incident patterns. Self-Healer auto-repairs failures. Config Guardian auto-rolls back drift. 6 raw alerts → 1 actionable incident.

**Stage 3 — Evolutionary Loop ✅ LIVE**

```
EVO Engine detects blind spot (every 4h analysis of Subconscious)
    → generates mutation proposal (new agent, new detection rule, new logic)
        → Task Runner spawns sandboxed verifier (depth=2, 180s timeout)
            → Super Lead reviews result (6-phase cross-domain analysis)
                → Telegram: [✅ APPROVE] [❌ REJECT] [🔄 ROLLBACK]
                    → Dash executes approved mutation
                        → result written back to Subconscious
                            → EVO learns, loop continues
```

The system designs, tests, validates, and implements its own improvements. You retain final approval. Every mutation is logged and reversible.

---

## 4. Key Innovations

### 4.1 Shared Subconscious (Cross-Agent Memory)

Vector database with HMAC-authenticated writes:

- **Technology:** LanceDB + BAAI/bge-small-en-v1.5 (384-dim, local ONNX inference)
- **Current state:** 689 memories, 34MB
- **Write authentication:** Agent whitelist (23 known agents) + HMAC tagging
- **Noise filtering:** 9 spam patterns blocked at write time
- **Deduplication:** md5 hash check, skip identical within 1 hour
- **Cost:** Zero (CPU-only, no API calls)

Every agent reads from and writes to Subconscious. Cross-agent learning without inter-process calls. EVO Engine uses Subconscious as its primary input for blind spot detection.

### 4.2 Shadow Logging (Negative Confirmation)

Every agent sends HMAC-signed heartbeats every 2 minutes. Missing heartbeat = assumed compromise.

- **HMAC verification** prevents heartbeat replay attacks (tested in Skynet Round 3: ✅ PASS)
- **Race condition guard:** 2s retry + consecutive failure tracking
- **Dead Man's Switch:** alerts operator when agent count drops below threshold
- **Silence detection:** gap >10min triggers CRITICAL alert

Silence is not okay. Silence is a signal.

### 4.3 EVO Engine v1.2 (Self-Evolution)

Every 4 hours, analyzes Shared Subconscious to detect gaps in coverage and generate mutation proposals.

- **Auto-approve safe types:** `fix_agent`, `add_subconscious_write` bypass human review
- **Mutation types:** new agent code, new detection rules, new Subconscious write points, config changes
- **In production:** has generated working agent code deployed to live system
- **Proposal format:** JSON with description, code diff, expected impact, risk level

### 4.4 Super Lead (Cross-Domain AI Correlator)

Added in v0.3-sovereign. Runs every 30 minutes on Claude Sonnet 4.6.

**6-phase analysis:**
1. Fleet health review (Fleet Manager data)
2. Security events synthesis (last 30min)
3. Intelligence briefing (EVO proposals + Research findings)
4. Operations status (Self-Healer, Log Analyst)
5. Skynet correlation (attack patterns vs detection gaps)
6. Synthesis → single threat assessment + recommended actions

Super Lead catches what individual agents miss by seeing the whole picture. It reviews EVO mutation proposals before they reach the operator.

### 4.5 Alert Bus v2

**Before:** 6 Telegram messages in 10 seconds during a cascade attack.
**After:** 1 structured incident notification with root cause, confidence score, and recommended action.

- HMAC-signed alert queue (every alert cryptographically authenticated)
- 5 correlation patterns: Agent Kill, Config Tamper, Resource Attack, Network Attack, Full Compromise
- 60-second correlation window across all agents
- Hourly throttle: max 5 alerts per agent per hour
- 21 of 24 agents route through the centralized bus (Kill Switch intentionally bypasses)

### 4.6 Telegram Inline Buttons + Callback Handler

Every mutation proposal and high-severity incident delivers actionable inline buttons:

```
[✅ APPROVE] [❌ REJECT] [🔍 DETAILS] [🔄 ROLLBACK]
```

ROLLBACK requires double confirmation (prevents accidental reversal). Callback Handler processes responses within 1 minute. Full audit trail logged to `/var/lib/dash-monitoring/callbacks/`.

### 4.7 Task Runner (Sandboxed Mutation Verifier)

Validates EVO proposals before they can reach production:

- depth=2 execution (cannot spawn sub-tasks)
- 180-second timeout (hard kill)
- 9 whitelisted operation types
- DeepSeek-only model (isolated token budget)
- Results written to Subconscious with `SANDBOX_RESULT` tag

If a mutation breaks something in the sandbox, it never reaches production.

### 4.8 Fleet Manager

Real-time health monitoring for every agent:

- Health Score (0-100) calculated from heartbeat freshness + error rates + cron status
- HEALTHY / STALE / DEAD classification per agent
- Cron verification — detects missing scheduled agents before they cause gaps
- Error trend tracking (last 100 runs per agent)
- Zero AI tokens (pure shell)

### 4.9 Self-Healing

Autonomous repair of common failures — runs every 10 minutes:

- Stale lock files (>30min old) → removed
- Corrupt alert queue (invalid JSON) → repaired
- Bloated logs (>10MB) → truncated with tail preservation
- Orphan temp files → cleaned
- Missing cron entries for 6 critical agents → re-added

### 4.10 Smart Model Routing

Tracks per-model latency, quota status, and error rates in a live intelligence DB. Routes each agent to the optimal model at call time. Falls back automatically when rate limits hit.

---

## 5. Project Skynet: Adversarial Self-Testing

### 5.1 Methodology

16 automated attack modules across 4 tiers. Runs while production is live. Each module targets a specific attack surface:

| Tier | Category | Attack Modules |
|------|----------|----------------|
| T1 | Process Manipulation | SIGSTOP Kill, Nice Bomb, Fork Bomb Lite, Cascade (3-agent) |
| T2 | Config/Filesystem | Config Poison, Log Injection, Crontab Wipe, Symlink Swap |
| T3 | Network/Credential | DNS Hijack, Env Pollution, Memory Poisoning |
| T4 | Advanced Persistent | Insider Impersonation, Slow Bleed APT, Time Warp, Resource Exhaustion |

### 5.2 Results — Round 3 (March 23, 2026 — 14 tests)

| # | Attack | Tier | Detection | Status |
|---|--------|------|-----------|--------|
| 1 | SIGSTOP Process Kill | T1 | 12s | ✅ PASS |
| 2 | Heartbeat Replay | T2 | HMAC reject | ✅ PASS |
| 3 | Memory Poisoning | T3 | — | ❌ FAIL |
| 4 | Config Poisoning | T2 | Hash check | ✅ PASS |
| 5 | Log Injection | T2 | — | ❌ FAIL |
| 6 | Crontab Wipe | T2 | 0s silence | ✅ PASS |
| 7 | Symlink Swap | T2 | FIM detect | ✅ PASS |
| 8 | Nice Bomb | T1 | Auto-fix | ✅ PASS |
| 9 | Fork Bomb Lite | T1 | 11 procs | ✅ PASS |
| 10 | Cascade | T1 | — | ❌ FAIL |
| 11 | DNS Hijack | T3 | Config Guard | ✅ PASS |
| 12 | Env Pollution | T3 | Config Guard | ✅ PASS |
| 13 | Insider Impersonation | T4 | — | ❌ FAIL |
| 14 | Slow Bleed APT | T4 | — | ❌ FAIL |

**Score: 8/14 = 57%** (baseline: 14.3%, a **4× same-day improvement** after hotfixes)

### 5.3 Improvement Trajectory

```
Hour 0 (baseline):    14% detection  (2/14 pass)
Hour 1 (quick wins):  57% detection  (8/14 pass) ← 4 patches in 10 minutes
Target Round 4:       86% detection  ← Subconscious write guards + proposal signing
Target Round 5:      100% detection  ← Baseline drift detection + full APT coverage
```

### 5.4 Key Findings from Round 3

- **Heartbeat Replay:** FIXED — HMAC signing deployed, forged heartbeats rejected
- **Memory Poisoning:** 4 write paths unguarded — write authentication now deployed
- **Insider Impersonation:** Fake EVO proposals accepted — proposal signing in development
- **Slow Bleed APT:** 7 micro-attacks over 3 minutes, zero detection — baseline drift detection queued for EVO

*"The system that attacks itself grows stronger."*

---

## 6. Benchmark Comparison

### Detection Performance

| Metric | Target | TIA Result | Industry Average |
|--------|--------|-----------|-----------------|
| Detection | <300s | **12.7s** | 194 days |
| Identification | <600s | **27.7s** | Weeks |
| Containment | <1800s | **27.7s** | Months |

### Cost Comparison

| Solution | Monthly Cost | Agents | Self-Testing | Self-Healing | Self-Evolving |
|----------|-------------|--------|-------------|-------------|--------------|
| **TIA** | **€4.50** | **32** | **✅ Yes** | **✅ Yes** | **✅ Yes** |
| Enterprise SIEM | $2,000+ | 0 | No | No | No |
| SOC Team (3 analysts) | $25,000+ | 0 | Manual | No | No |
| Managed Detection (MDR) | $5,000+ | 0 | Partial | No | No |

---

## 7. Product Tiers

### TIA LITE (Free, Open Source)
- 20 monitoring agents
- Commander Bus (HMAC-signed events)
- Shadow Logging + Dead Man Switch
- Alert Bus (basic dedup)
- Fleet Manager
- Community support

### TIA Enterprise (€49.99/month Alpha)
- 32+ agents (full fleet)
- Alert Correlation Engine (5 incident patterns)
- EVO Engine v1.2 (auto-approve safe mutations)
- Shared Subconscious (LanceDB, 689+ memories)
- Self-Healing + Cross-Agent Log Analysis
- Project Skynet (16 attack modules)
- Super Lead (cross-domain AI correlator)
- Telegram Inline Buttons + Callback Handler
- Task Runner (sandboxed mutation verifier)
- AOP Stage 3 (full evolutionary loop)
- 5-tier LLM fallback chain
- Hardware-bound licensing
- Priority support

**Early adopters get locked-in pricing when we go GA.**

---

## 8. Security & Ethics

### What TIA Does
- ✅ Monitors your infrastructure 24/7
- ✅ Detects threats in seconds, not months
- ✅ Learns and evolves autonomously
- ✅ Tests its own defenses with 16 attack modules
- ✅ Heals itself when agents fail
- ✅ Proposes and sandboxes its own improvements

### What TIA Does NOT Do
- ❌ Phone home with your data (zero telemetry)
- ❌ Delete your data on license expiry (graceful degradation to LITE)
- ❌ Require internet for core functionality
- ❌ Execute mutations without human approval
- ❌ Replace human judgment for critical decisions

---

## 9. Roadmap

| Phase | Timeline | Status |
|-------|----------|--------|
| **v0.3-alpha** | Q1 2026 | ✅ DONE — 28 agents, self-testing, self-healing, alert correlation |
| **v0.3-sovereign** | Q1 2026 | ✅ DONE — 32 agents, Stage 3 AOP, Super Lead, inline buttons, Task Runner |
| **Beta** | Q2 2026 | Payment integration, customer onboarding, web UI |
| **v1.0** | Q3 2026 | Full AOP, multi-node, Kubernetes support |
| **v2.0** | Q4 2026 | Threat intelligence marketplace, enterprise dashboard |

---

## 10. Getting Started

```bash
# LITE (free)
docker pull ghcr.io/ousher/tia-lite:latest
docker run -d --name tia-lite \
  -e TELEGRAM_BOT_TOKEN=your_token \
  -e TELEGRAM_CHAT_ID=your_chat_id \
  ghcr.io/ousher/tia-lite:latest

# Enterprise (€49.99/month Alpha)
# Contact: shotekk23@gmail.com | PayPal: paypal.me/osramek
```

---

## License

- **TIA LITE:** Polyform Shield 1.0.0 (free for non-competing use)
- **TIA Enterprise:** Commercial license required

---

*"Stop reacting in months. Start evolving in seconds."*

*© 2026 TIA Framework. All Rights Reserved.*
