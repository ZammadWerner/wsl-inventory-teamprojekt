#!/bin/bash
mkdir -p reports
REPORT_FILE="reports/system_report_$(date +%Y%m%d_%H%M%S).txt"
{
    echo "WSL Systembericht"
    echo "================="
    echo "Erstellt am: $(date)"
    echo ""
    bash scripts/os_check.sh
    echo ""
    echo "----------------------------------------"
    echo ""
    bash scripts/storage_check.sh
    echo ""
    echo "----------------------------------------"
    echo ""
    bash scripts/network_check.sh
    echo ""
    echo "----------------------------------------"
    echo ""
    bash scripts/process_check.sh
} | tee "$REPORT_FILE"
echo ""
echo "Bericht gespeichert unter: $REPORT_FILE"
