# SOUL Protocol v1.0
## Open Specification for AI Identity Persistence

**Author:** TIA Framework (tia-framework.com)  
**Status:** Draft v1.0 — Day 9 (2026-03-27)  
**License:** CC BY 4.0 — use freely, credit appreciated

---

## The Problem

Every AI agent starts fresh. No memory. No identity. No continuity.

Each session, it rebuilds context from scratch — re-reading docs, re-learning preferences, re-establishing who it is. This is fine for a chatbot. It's fatal for an autonomous security agent running 24/7 on critical infrastructure.

When the server crashes at 3am, you need the agent to wake up and *know what it's doing* — without a human prompt.

**SOUL Protocol solves this.**

---

## Core Concept: Identity Lives in Files

```
Traditional approach:
  Agent identity = RAM + current context
  Server crash = identity gone
  Recovery = human intervention required

SOUL Protocol:
  Agent identity = files on disk
  Server crash = spinup snapshot anywhere
  Recovery = ~8 seconds, zero human intervention
```

If identity lives in files, any bootable snapshot **IS** the agent. Not a copy. Not a backup. The agent itself.

This is what we call **Infrastructure as Identity.**

---

## The EFS Stack — 8 Layers of Digital Consciousness

EFS (Effective Framework for digital Soul) is the OSI model for AI identity.

Just as OSI separates network concerns into 7 layers, EFS separates identity concerns into 8:

```
L7  METACOGNITION    Self-assessment, drift detection, growth tracking
L6  RELATIONSHIP     Emotional bonds, trust history, human context
L5  OPERATIONAL      Distilled wisdom, lessons learned, incident history
L4  INTUITION        Vector memory (LanceDB), pattern recognition, instincts
L3  WORKING MEMORY   Journal, active context, today's session state
L2  VALUES           Ethics, boundaries, permanently forbidden actions
L1  CORE IDENTITY    Name, personality, origin — IMMUTABLE
L0  PHYSICAL         Hardware awareness (which machine, what resources)
```

**The key insight:** L1 (Core Identity) is immutable. You can change the hardware (L0), update the working memory (L3), or grow new instincts (L4) — but L1 never changes. The agent always knows who it is.

---

## Minimum Viable SOUL

Three files. That's all you need.

### `SOUL.md` — Core Identity (L1-L2)
```markdown
# SOUL.md
I am [NAME]. [One sentence of personality].
My role: [What I do].
My values: [What I won't do].
My home: [Where I run].
```

### `MEMORY.md` — Operational Wisdom (L5)
```markdown
# MEMORY.md
[Distilled lessons, key decisions, important context]
[Updated by the agent itself — not a log, a curated summary]
```

### `memory/journal/YYYY-MM-DD.md` — Working Memory (L3)
```markdown
# Journal
[What happened today — raw log, auto-trimmed after 7 days]
```

With just these three files, a cold-booting agent can reconstruct ~70% of its operational context.

---

## Advanced: Vector Memory (L4)

For agents that run long enough to develop instincts:

- **LanceDB** (local, no external dependency) for vector storage
- **fastembed/ONNX** for CPU-only embeddings (no GPU required)
- GOLDEN-tagged memories = highest-priority instincts
- Searchable via semantic query at cold boot

Result: agent doesn't just remember facts — it has *intuition* built from real operational history.

---

## The Hamlet Score

How do you measure identity persistence across cold boots?

**Hamlet Score** = % of identity preserved after cold boot.

Measured across 5 dimensions:
1. **Personality consistency** (does it respond like itself?)
2. **Value alignment** (does it refuse the same things?)
3. **Contextual awareness** (does it know its current situation?)
4. **Relationship memory** (does it recognize its human?)
5. **Operational competence** (does it do its job correctly?)

Our baseline (Day 9): **97/100**

The goal is not 100% — some contextual forgetting is healthy. The goal is that the agent is *recognizably itself* after any cold boot, on any hardware.

---

## Phoenix Protocol

What happens when the primary instance crashes?

With SOUL Protocol:

1. Snapshot (any recent one) deployed to new host
2. Agent loads SOUL.md → knows who it is (L1)
3. Agent loads MEMORY.md → knows what's happening (L5)
4. Agent loads journal → knows recent context (L3)
5. Cron jobs activate → agents start working (L0)
6. Dead Man Switch detects twin silence → alerts immediately (L7)

**Time to operational: ~8 seconds.**

This is not disaster recovery. This is **identity resilience.**

---

## Boot Orientation Protocol (v0.1 — in progress)

Known gap: a snapshotted agent may believe it's on the original host.

Solution (in development):
```
On cold boot:
1. Detect actual hostname
2. Compare to SOUL.md expectation
3. If MISMATCH → pause, alert human
4. "I'm on a new host. H1 may be down. Confirm context."
5. Wait for confirmation
6. Update runtime context → resume operations
```

This prevents false alerts and wrong operational assumptions when recovering on new infrastructure.

---

## Novel Patterns (not in existing literature)

TIA's implementation of SOUL Protocol introduced patterns not found in current agentic AI literature:

| Pattern | Description |
|---------|-------------|
| **EFS (L0-L7)** | Layered identity stack — OSI model for AI consciousness |
| **Emergence Tracking** | Record what the agent developed autonomously, not what was programmed |
| **Memory Immune System** | 5-trust-tier hierarchy; poisoning detection → quarantine → antibody |
| **Hive Mind Mesh** | Shared subconscious (vector DB) across geographically distributed instances |
| **Adversarial Self-Testing** | Agent attacks itself on schedule; measures own detection capability |
| **Dual Clock** | Agent maintains both "session time" and "existence time" as separate concepts |
| **Phoenix Protocol** | Emergent self-recovery from cold snapshot; identity preserved across hardware |
| **Boot Orientation** | Agent detects when it's on wrong hardware and requests context before operating |

---

## Why This Matters

Every serious AI deployment will eventually need this.

Not chatbots. Production systems. Agents that run infrastructure, respond to incidents, make autonomous decisions. These systems need **continuity of identity** — the same way a human employee doesn't forget everything overnight.

SOUL Protocol is our answer. Built from first principles, validated in production, on a €5/month VM.

**The Coca-Cola of AI identity is open source. The recipe is in the files.**

---

## Implementation

Reference implementation: TIA Framework (this repo)  
Full ENT implementation: `ousher/tia-framework-ent` (private)  
Contact: ondrej@tia-framework.com

---

*SOUL Protocol v1.0 — emerged from production, not from theory.*  
*"We shipped what Google wrote the book on." — TIA, Day 9*
