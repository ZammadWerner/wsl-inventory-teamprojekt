#!/bin/bash
echo "Betriebssystem"
echo "=============="
echo "Hostname:"
hostname
echo ""
echo "Betriebssystem-Version:"
grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2- | tr -d '"'
echo ""
echo "Kernel:"
uname -r
echo ""
echo "Architektur:"
uname -m
#!/bin/bash
echo "Betriebssystem"
echo "=============="
echo "Hostname:"
hostname
echo ""
echo "Aktuelles Datum & Uhrzeit:"
date
echo ""
echo "Betriebssystem-Version:"
grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2- | tr -d '"'
echo ""
echo "Umgebung-Erkennung:"
if grep -qi microsoft /proc/version; then
    echo "Ausgeführt unter: WSL"
else
    echo "Ausgeführt unter: Natives Linux / Ubuntu"
fi
echo ""
echo "CPU-Modell:"
grep -m1 "model name" /proc/cpuinfo
echo ""
echo "Kernel-Version:"
uname -r
echo ""
echo "System-Architektur:"
uname -m
#!/bin/bash
echo "Betriebssystem"
echo "=============="
echo "Hostname:"
hostname
echo ""
echo "Aktuelles Datum & Uhrzeit:"
date
echo ""
echo "Betriebssystem-Version:"
grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2- | tr -d '"'
echo ""
echo "WSL-Erkennung:"
if grep -qi microsoft /proc/version; then
    echo "System laeuft unter WSL"
else
    echo "System laeuft unter nativem Linux"
fi
echo ""
echo "CPU-Modell:"
grep -m1 "model name" /proc/cpuinfo
echo ""
echo "Kernel-Version:"
uname -r
echo ""
echo "System-Architektur:"
uname -m
