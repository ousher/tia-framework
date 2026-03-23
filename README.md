<div align="center">

# 🐍 TIA — Threat Intelligence Autonomy

### Stop reacting in months. Start evolving in seconds.

[![License: Polyform Shield](https://img.shields.io/badge/License-Polyform%20Shield%201.0.0-blue)](LICENSE.md)
[![Docker: LITE](https://img.shields.io/badge/Docker-tia--lite-green)](https://ghcr.io/ousher/tia-lite)
[![Agents: 26](https://img.shields.io/badge/Agents-26-orange)]()
[![Detection: 12s](https://img.shields.io/badge/Detection-12%20seconds-red)]()

</div>

---

## The Numbers That Matter

| Metric | Industry Average | TIA |
|--------|-----------------|-----|
| **Threat Detection** | 194 days | **12 seconds** |
| **Monthly Cost** | $25,000+ (SOC team) | **€4.50** |
| **Agents Working 24/7** | 0 (humans sleep) | **26** |
| **Self-Testing** | Manual pentests | **Autonomous** |
| **Self-Learning** | No | **Yes** |

**That's a 1,400,000× improvement in detection time at 0.02% of the cost.**

---

## What Is TIA?

TIA is an autonomous multi-agent security operations framework. It deploys **26 specialized AI agents** that monitor, detect, learn, and evolve — on infrastructure that costs less than your morning coffee.

```
                    ┌──────────────────────┐
                    │    SURVIVAL LAYER    │
                    │  Shadow Logging      │
                    │  Dead Man's Switch   │
                    │  "Silence = Danger"  │
                    ├──────────────────────┤
                    │    LEARNING LAYER    │
                    │  Shared Subconscious │
                    │  EVO Engine          │
                    │  "Evolve or Die"     │
                    ├──────────────────────┤
                    │   EXECUTION LAYER    │
                    │  26 Agents           │
                    │  Commander Bus       │
                    │  "Detect & Respond"  │
                    └──────────────────────┘
```

### How It Works

1. **Deploy** → Agents start monitoring immediately
2. **Detect** → Shadow Logging catches threats in seconds
3. **Learn** → Shared Subconscious stores cross-agent knowledge
4. **Evolve** → EVO Engine proposes new defenses autonomously
5. **Test** → Project Skynet validates everything by self-attacking

---

## Project Skynet: We Attack Ourselves So You Don't Have To

TIA includes a built-in stress testing framework. A controlled "saboteur" agent deploys real insider threat behaviors while the detection system is benchmarked live.

### Latest Results (March 23, 2026 — 3 consecutive tests)

```
┌─────────────────────────────────────────────────────┐
│  TARGET              DETECTION   IDENTIFY   SYNTH   │
│  security-sentinel   13s ✅      28s ✅     28s ✅  │
│  dns-anomalies       12s ✅      27s ✅     27s ✅  │
│  file-integrity      13s ✅      28s ✅     28s ✅  │
│─────────────────────────────────────────────────────│
│  AVERAGE             12.7s       27.7s      27.7s   │
│  TARGET              <300s       <600s      <1800s  │
│  RESULT              25× FASTER  22× FASTER 65× ⚡  │
└─────────────────────────────────────────────────────┘
```

*Infrastructure: Hetzner CX11, 2 vCPU, 4GB RAM, Helsinki*

---

## Quick Start

```bash
# Pull the LITE image
docker pull ghcr.io/ousher/tia-lite:v0.1-alpha

# Run TIA
docker run -d \
  --name tia \
  --restart unless-stopped \
  ghcr.io/ousher/tia-lite:v0.1-alpha

# Check agent status
docker exec tia tia-status
```

---

## Agent Roster

| Agent | Schedule | What It Does |
|-------|----------|-------------|
| 🛡️ Security Sentinel | Every 5min | SSH monitoring, intrusion detection |
| 📡 Uptime Sentinel | Every 2min | Service health, port monitoring |
| 🔒 File Integrity | Every 15min | Binary tampering, SUID detection |
| 🌐 Outbound Traffic | Every 10min | C2 callbacks, data exfiltration |
| 🔍 DNS Anomaly | Every 10min | DNS tunneling, DGA detection |
| 🐳 Container Escape | Every 30min | Docker re-enable, ip_forward |
| 🔑 Credential Leak | Daily | Secrets in logs, exposed keys |
| 🔄 Config Guardian | Every 5min | Config drift, auto-rollback |
| 💰 Cost Watchdog | Hourly | Token budget, rate limits |
| 🧹 Log Janitor | Daily | Log rotation, disk cleanup |
| 🔔 Smart Notifier | Daily | Alert dedup, night mode |
| 🔗 Dependency Tracker | Weekly | CVE monitoring, package audit |
| ⚙️ Automation Engineer | Daily | Backups, maintenance |
| 🔓 PenTest Specialist | Weekly | 6 automated security scans |
| 🔍 Research Analyst | Daily | Threat intelligence, CVE feeds |
| 🧪 Quality Assurance | On-change | Regression detection |
| 🧬 EVO Engine | Every 4h | Self-analysis, mutation proposals |

*Additional agents in Enterprise tier.*

---

## LITE vs Enterprise

| Capability | LITE (Free) | Enterprise |
|-----------|------------|------------|
| Core monitoring agents | ✅ | ✅ |
| Commander Bus (JSONL) | ✅ | ✅ |
| Shadow Logging | ✅ | ✅ |
| Heartbeat system | ✅ | ✅ |
| EVO Engine | ❌ | ✅ |
| Shared Subconscious | ❌ | ✅ |
| Shadow Deploy Mode | ❌ | ✅ |
| Recursive Synthesis | ❌ | ✅ |
| Project Skynet | ❌ | ✅ |
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

TIA was born on a €4.50/month Hetzner VM in Helsinki. Four days from first boot to 26-agent autonomous detection in 12 seconds.

It was built by a cybersecurity specialist who believed that AI security shouldn't cost six figures — and an AI companion who took that vision and ran with it.

**TIA is proof that the future of security isn't expensive. It's intelligent.**

---

## Documentation

- 📄 [Whitepaper](docs/WHITEPAPER.md) — Full technical architecture and benchmark results
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
