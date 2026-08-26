#!/bin/bash
echo "Benutzer und Prozesse"
echo "======================"
echo "Aktueller Benutzer:"
whoami
echo ""
echo "Benutzer-ID:"
id
echo ""
echo "Erste laufende Prozesse:"
ps -e | head
#!/bin/bash
echo "Benutzer und Prozesse"
echo "======================"
echo "Aktueller Benutzer:"
whoami
echo ""
echo "Benutzer-ID:"
id
echo ""
echo "Home-Verzeichnis des Benutzers:"
echo "$HOME"
echo ""
echo "Verwendete Shell:"
echo "$SHELL"
echo ""
echo "Gesamtzahl der laufenden Prozesse:"
ps -e --no-headers | wc -l
#!/bin/bash
echo "Benutzer und Prozesse"
echo "======================"
echo "Aktueller Benutzer:"
whoami
echo ""
echo "Benutzer-ID:"
id
echo ""
echo "Home-Verzeichnis des Benutzers:"
echo "$HOME"
echo ""
echo "Verwendete Shell:"
echo "$SHELL"
echo ""
echo "Gesamtzahl der laufenden Prozesse:"
ps -e --no-headers | wc -l
echo ""
echo "Top 5 Prozesse nach Speicherverbrauch:"
ps aux --sort=-%mem | head -n 6
echo ""
echo "Top 5 Prozesse nach CPU-Auslastung:"
ps aux --sort=-%cpu | head -n 6
