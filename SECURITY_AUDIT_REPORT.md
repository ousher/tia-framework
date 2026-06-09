# Security Audit Report

**Date:** 2026-06-09
**Auditor:** Toast (Gastown Rig)
**Scope:** General security audit of the repository (secrets, dependencies, input validation, anti-patterns).

## Executive Summary
The repository is primarily a static website/documentation site, though some pages (`demo.html`, `threatmap.html`) actively fetch live external API data and inject it into the DOM. Overall security posture is good. No exposed secrets, credentials, or insecure backend dependencies were found. However, genuine frontend security risks exist regarding unsanitized `innerHTML` injection from external APIs and missing Subresource Integrity (SRI) on third-party resources.

## Detailed Findings

### 1. Exposed Secrets, API Keys, or Credentials
- **Status:** ✅ Clear
- **Details:** 
  - No secrets, API keys, passwords, or tokens found in the current codebase.
  - Git history was searched for common secret patterns; no matches were found in code files.
  - `.gitignore` (lines 5-14) correctly excludes common secret file patterns (`*.env`, `*.token`, `*.key`, `*secrets*`, `*credentials*`).
  - `threats.json` (line 9) explicitly states: "Anonymized production data. No IPs, paths, or credentials exposed."

### 2. Insecure Dependency Versions or Known Vulnerabilities
- **Status:** ✅ Not Applicable
- **Details:** The repository consists entirely of static assets (HTML, CSS, JS, Markdown, images). There are no backend dependency files (e.g., `package.json`, `requirements.txt`, `go.mod`, `pom.xml`, `Cargo.toml`) to audit for vulnerabilities.

### 3. Input Validation and Sanitization
- **Status:** 🚨 Critical Risk (External API Injection)
- **Details:** 
  - Several HTML files use `innerHTML` to inject content dynamically. While some pages (`threats.html`, `mirror.html`, `index.html`) use safe, local, or hardcoded data, others fetch live external data:
    - `demo.html` fetches live data from NVD and URLhaus APIs, injecting `cve.desc`, `url.tags`, and `url.threat` into `innerHTML` at line 887.
    - `threatmap.html` fetches live data from abuse.ch (Feodo Tracker), injecting `entry.malware` and `entry.ip_address` into feed items via direct `innerHTML` (e.g., lines 608, 669, 675), and into Leaflet popups via `bindPopup()`, which renders HTML internally and requires a different sanitization approach.
  - **Risk Assessment:** This is a present and critical XSS risk. If either external API (abuse.ch, URLhaus, NVD) is ever compromised, experiences a Man-in-the-Middle (MITM) attack, or returns malicious payloads, XSS will execute in every visitor's browser. There is currently no Content Security Policy (CSP) or HTML sanitization in place to mitigate this.
  - **Recommendation:** Immediately replace all `innerHTML` assignments with safe DOM manipulation (e.g., `textContent`) or use a robust HTML sanitization library (like DOMPurify) when rendering external API data. Additionally, implement a strict Content Security Policy (CSP).

### 4. Other Security Anti-Patterns
- **Status:** 🚨 Critical Observation (Supply Chain Risk)
- **Details:**
  - **Unsandboxed External Loads:** `threatmap.html` loads multiple external resources without Subresource Integrity (SRI) or sandboxing:
    - Leaflet CSS: `<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />` (line 14)
    - Leaflet JS: `<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>` (line 525)
    - GoatCounter Analytics: `<script async src="//gc.zgo.at/count.js"></script>` (line 765). The protocol-relative URL is an HTTP downgrade vector, compounding the SRI risk.
  - **Risk Assessment:** Loading scripts and stylesheets from third-party CDNs introduces a severe supply chain risk. If the CDN is compromised or the specific version is hijacked, malicious code can be injected into the application.
  - **Recommendation:** Add a Subresource Integrity (SRI) `integrity` attribute and `crossorigin="anonymous"` to all external `<script>` and `<link>` tags to ensure fetched resources have not been tampered with. Alternatively, self-host these third-party libraries.

## Conclusion
While the repository has no exposed secrets or backend vulnerabilities, it currently presents Critical security risks due to unsanitized external API data injection and missing Subresource Integrity (SRI) on third-party resources. The existing `SECURITY.md` provides a clear responsible disclosure process. To make the repository secure for its current purpose, immediate remediation is required: implement safe DOM manipulation (or HTML sanitization) and a strict Content Security Policy (CSP) for external data, and add SRI attributes to all external scripts and stylesheets to mitigate supply chain attacks.
