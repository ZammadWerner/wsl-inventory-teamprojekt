# wsl-inventory-teamprojekt
# WSL Inventar-Teamprojekt

Ein modulares Bash-Skript-System zur automatisierten System- und Hardware-Inventarisierung in Linux- und WSL-Umgebungen.

## Projektstruktur
- `scripts/os_check.sh` - Erfasst Betriebssystem, Kernel, Architektur und Hostname.
- `scripts/storage_check.sh` - Prüft Festplattenbelegung, Inodes und Arbeitsspeicher.
- `scripts/network_check.sh` - Listet Netzwerkschnittstellen, IP-Adressen und DNS-Server auf.
- `scripts/process_check.sh` - Zeigt Benutzerdaten, Shell und Top-Prozesse nach CPU/Speicher.
- `config/company.conf` - Zentrale Konfigurationsdatei für Unternehmens- und Umgebungsparameter.
- `generate_report.sh` - Führt alle Module aus und generiert einen zeitgestempelten Gesamtbericht.

## Verwendung
Zur Ausführung des gesamten Inventar-Reports:
```bash
chmod +x generate_report.sh
./generate_report.sh
