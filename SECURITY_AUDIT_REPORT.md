# Security Audit Report

**Date:** 2026-06-09
**Auditor:** Toast (Gastown Rig)
**Scope:** General security audit of the repository (secrets, dependencies, input validation, anti-patterns).

## Executive Summary
The repository is a static website/documentation site. Overall security posture is good. No exposed secrets, credentials, or insecure backend dependencies were found. Minor frontend security considerations (lack of SRI, use of `innerHTML`) are noted but pose low risk in the current static context.

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
- **Status:** ⚠️ Low Risk (Context-Dependent)
- **Details:** 
  - Several HTML files use `innerHTML` to inject content dynamically:
    - `threats.html:588, 596`
    - `threatmap.html:608`
    - `mirror.html:1231, 1261, 1266, 1300, 1345, 1350, 1380, 1420`
    - `index.html:818`
    - `demo.html:887`
  - **Risk Assessment:** Because this is a static site and the injected content appears to be hardcoded or derived from the pre-validated, anonymized `threats.json`, the immediate Cross-Site Scripting (XSS) risk is low. 
  - **Recommendation:** If the site evolves to accept or display user-generated content or untrusted external API responses, all `innerHTML` assignments must be replaced with safe DOM manipulation (e.g., `textContent`) or proper HTML sanitization libraries.

### 4. Other Security Anti-Patterns
- **Status:** ⚠️ Minor Observation
- **Details:**
  - **External Script Loading:** `threatmap.html:525` loads an external JavaScript library: `<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>`.
  - **Risk Assessment:** Loading scripts from third-party CDNs introduces a supply chain risk if the CDN is compromised or the specific version is hijacked.
  - **Recommendation:** Add a Subresource Integrity (SRI) `integrity` attribute and `crossorigin="anonymous"` to the script tag to ensure the fetched resource has not been tampered with. Example: `<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha384-..." crossorigin="anonymous"></script>`.

## Conclusion
The repository is secure for its current purpose as a static informational website. The existing `SECURITY.md` provides a clear responsible disclosure process. Implementing the SRI recommendation would further harden the frontend against supply chain attacks.
