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
