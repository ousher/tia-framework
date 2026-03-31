# Kustod — Tvůj kolega, který nikdy nezapomíná
## Pilot Program 2026 · Interní představení

---

## Problém

Každý den ztrácíme čas tím, že hledáme věci, které jsme už jednou vyřešili.

> *"Jak jsme to dělali u toho zákazníka?"*  
> *"Kde je ta šablona nabídky?"*  
> *"Jaký byl ten fix na VPN loni?"*

Znalosti žijí v hlavách lidí — a odcházejí s nimi. Nebo se nedají najít, když je potřebujeme.

---

## Řešení: Kustod

**Kustod** je AI asistent s perzistentní pamětí. Pracuje lokálně, mluví přes Telegram nebo Teams, a pamatuje si vše co mu řekneš.

Není to chatbot. Je to kolega, který byl u každého projektu, každého zákazníka, každého incidentu — a nezapomněl nic.

---

## Pro techniky (Kustod Tech)

| Bez Kustoda | S Kustodem |
|------------|------------|
| Hledám v confluence 20 minut | "Jak jsme řešili VPN u Alzy?" → odpověď za 3s |
| Zapomněl jsem jaký byl ten fix | Pamatuje si všechny incidenty a řešení |
| Nový kolega neví nic o zákazníkovi | Kustod mu předá celý kontext |
| Troubleshooting od nuly | Navrhne řešení na základě historie |

---

## Pro obchodníky a back office (Kustod Office)

| Bez Kustoda | S Kustodem |
|------------|------------|
| Hledám starou nabídku 30 minut | Generuje nabídku za 2 minuty |
| Zapomněl jsem podmínky pro partnera X | Pamatuje si všechny smluvní podmínky |
| Píšu email partnerovi od nuly | Navrhne draft v mém stylu |
| Sizing odhadem | Sizing na základě historických zakázek |

---

## Jak to vypadá v praxi

```
Ty:      Udělej nabídku pro Alzu, 50x Office 365
Kustod:  Alzu znám — poslední nabídka 12. 2., sleva 8%.
         Generuji podle šablony... hotovo.
         → nabídka_alza_50x_O365.docx

Ty:      Jak jsme řešili ten problém s certifikátem u nich?
Kustod:  Incident 3. 11. 2025 — expired wildcard cert na 
         mail.alza.cz. Fix: Let's Encrypt renewal + 
         cronjob. Ticket #3847.
```

---

## Technické detaily (pro IT)

- **Nasazení:** Mini PC nebo existující server, Ubuntu 22.04+
- **Interface:** Telegram bot nebo Microsoft Teams
- **Data:** 100% lokální, žádné PII do cloudu
- **Izolace:** Každý uživatel má vlastní Kustod — data se nesdílí
- **Offline:** Lokální AI fallback bez internetu
- **Instalace:** 48 hodin od schválení pilotu

---

## Pilot Program

**Co nabízíme:**
- Bezplatné pilotní nasazení pro váš tým
- Pomoc s konfigurací a onboardingem
- 30 dní plná podpora
- NDA k dispozici

**Co potřebujeme:**
- Ubuntu server nebo mini PC (nebo pomůžeme vybrat)
- 2–5 pilotních uživatelů
- Ochota poskytnout zpětnou vazbu

---

## Kontakt

**Ondrej** · shotekk23@gmail.com  
*Odpovídáme do 24 hodin.*

---

*Kustod je součástí TIA — Stateful AI platformy nové generace.*  
*© 2026 TIA Framework*
