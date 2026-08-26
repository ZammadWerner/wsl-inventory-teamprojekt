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
#!/bin/bash

# Konfiguration laden
if [ -f "config/company.conf" ]; then
    source "config/company.conf"
else
    echo "Warnung: config/company.conf nicht gefunden!"
    COMPANY_NAME="Unbekannt"
    DEVICE_ROLE="Unbekannt"
    TRAINING_NAME="Unbekannt"
    REPORT_OWNER="Unbekannt"
fi

# Zielordner für Reports sicherstellen
mkdir -p reports

# Report-Dateiname mit Zeitstempel
REPORT_FILE="reports/inventory_report_$(date +%Y%m%d_%H%M%S).txt"

echo "==================================================" > "$REPORT_FILE"
echo "          GESAMT-INVENTARISIERUNGS-REPORT          " >> "$REPORT_FILE"
echo "==================================================" >> "$REPORT_FILE"
echo "Unternehmen:  $COMPANY_NAME" >> "$REPORT_FILE"
echo "Geräterolle:  $DEVICE_ROLE" >> "$REPORT_FILE"
echo "Kontext:      $TRAINING_NAME" >> "$REPORT_FILE"
echo "Erstellt von: $REPORT_OWNER" >> "$REPORT_FILE"
echo "Datum:        $(date)" >> "$REPORT_FILE"
echo "==================================================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Einzelne Skripte ausführen und Ausgabe in den Report schreiben
echo "Führe OS-Check aus..."
echo "--------------------------------------------------" >> "$REPORT_FILE"
bash scripts/os_check.sh >> "$REPORT_FILE" 2>&1
echo "" >> "$REPORT_FILE"

echo "Führe Storage-Check aus..."
echo "--------------------------------------------------" >> "$REPORT_FILE"
bash scripts/storage_check.sh >> "$REPORT_FILE" 2>&1
echo "" >> "$REPORT_FILE"

echo "Führe Network-Check aus..."
echo "--------------------------------------------------" >> "$REPORT_FILE"
bash scripts/network_check.sh >> "$REPORT_FILE" 2>&1
echo "" >> "$REPORT_FILE"

echo "Führe Process-Check aus..."
echo "--------------------------------------------------" >> "$REPORT_FILE"
bash scripts/process_check.sh >> "$REPORT_FILE" 2>&1
echo "" >> "$REPORT_FILE"

echo "Report erfolgreich erstellt: $REPORT_FILE"
