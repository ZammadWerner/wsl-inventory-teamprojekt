#!/bin/bash
echo "Netzwerk"
echo "========"
echo "Hostname:"
hostname
echo ""
echo "IP-Adressen:"
hostname -I
echo ""
echo "Standardroute:"
ip route | grep default
#!/bin/bash
echo "Netzwerk"
echo "========"
echo "Hostname:"
hostname
echo ""
echo "Netzwerkschnittstellen (kompakt):"
ip -brief addr
echo ""
echo "Standardroute:"
ip route | grep default
#!/bin/bash
echo "Netzwerk"
echo "========"
echo "Hostname:"
hostname
echo ""
echo "Netzwerkschnittstellen (kompakt):"
ip -brief addr
echo ""
echo "Standardroute:"
ip route | grep default
echo ""
echo "Erster DNS-Server:"
grep -m1 "^nameserver" /etc/resolv.conf
echo ""
echo "Anzahl der IP-Adressen:"
hostname -I | wc -w
