#!/bin/bash
# © 2026 TIA Framework — Polyform Shield 1.0.0
# ─── TIA License Validator (Public API) ─────────────────────────────────────
# This is the LITE validator. Always returns valid for open-source users.
# ENT builds replace this with hardware-bound validation.
# ─────────────────────────────────────────────────────────────────────────────

TIA_LICENSE_VERSION="1.0.0"
TIA_TIER="lite"

# ─── Public API ──────────────────────────────────────────────────────────────

# Check if current license is valid
# LITE: Always true. ENT: Validates HWFP + lease token.
tia_license_valid() {
    # LITE tier — open source, always valid
    if [ "$TIA_TIER" = "lite" ]; then
        echo "valid"
        return 0
    fi
    
    # ENT tier — validate hardware fingerprint + lease token
    # (This block is replaced in ENT builds)
    _tia_validate_ent
}

# Get current license tier
tia_license_tier() {
    echo "$TIA_TIER"
}

# Check if a specific feature is available
# Usage: tia_feature_check "evo-engine" && run_evo
tia_feature_check() {
    local feature="$1"
    
    case "$TIA_TIER" in
        "ent"|"enterprise")
            # All features available
            return 0
            ;;
        "lite")
            # LITE features only
            case "$feature" in
                "commander-bus"|"heartbeat"|"shadow-logging"|"basic-monitoring")
                    return 0
                    ;;
                "evo-engine"|"shared-subconscious"|"shadow-deploy"|"recursive-synthesis"|"skynet")
                    return 1
                    ;;
                *)
                    # Unknown feature — default deny
                    return 1
                    ;;
            esac
            ;;
    esac
}

# Get hardware fingerprint (for ENT activation)
tia_hardware_fingerprint() {
    local hwid cpu_hash mac_hash disk_hash
    
    hwid=$(cat /sys/class/dmi/id/product_uuid 2>/dev/null || echo "no-dmi")
    cpu_hash=$(grep "model name" /proc/cpuinfo | head -1 | sha256sum | cut -c1-16)
    mac_hash=$(ip link show 2>/dev/null | grep ether | head -1 | awk '{print $2}' | sha256sum | cut -c1-16)
    disk_hash=$(lsblk -o UUID 2>/dev/null | grep -v UUID | head -1 | sha256sum | cut -c1-16)
    
    echo "TIA-HW-$(echo "${hwid}:${cpu_hash}:${mac_hash}:${disk_hash}" | sha256sum | cut -c1-32)"
}

# ─── ENT Validation (stub — replaced in ENT builds) ─────────────────────────

_tia_validate_ent() {
    local hwfp lease_token
    
    hwfp=$(tia_hardware_fingerprint)
    lease_token="/etc/tia/lease-token.jwt"
    
    if [ ! -f "$lease_token" ]; then
        echo "no-license"
        return 1
    fi
    
    # ENT builds inject real JWT validation here
    # LITE stub: always invalid for ENT (forces LITE mode)
    echo "lite-only"
    return 1
}

# ─── Feature Gate Helper ────────────────────────────────────────────────────

# Wrap ENT-only code blocks:
#   if tia_require_ent "evo-engine"; then
#       run_evo_engine
#   fi
tia_require_ent() {
    local feature="$1"
    if ! tia_feature_check "$feature"; then
        echo "[TIA] Feature '$feature' requires Enterprise license." >&2
        echo "[TIA] Current tier: $(tia_license_tier)" >&2
        echo "[TIA] Visit: https://tia.security/enterprise" >&2
        return 1
    fi
    return 0
}

# ─── Self-Test ───────────────────────────────────────────────────────────────

if [ "${1:-}" = "--test" ]; then
    echo "TIA License Validator v${TIA_LICENSE_VERSION}"
    echo "Tier: $(tia_license_tier)"
    echo "Valid: $(tia_license_valid)"
    echo "HWFP: $(tia_hardware_fingerprint)"
    echo ""
    echo "Feature gates:"
    for f in commander-bus heartbeat shadow-logging basic-monitoring evo-engine shared-subconscious shadow-deploy recursive-synthesis skynet; do
        if tia_feature_check "$f"; then
            echo "  ✅ $f"
        else
            echo "  🔒 $f (ENT only)"
        fi
    done
fi
