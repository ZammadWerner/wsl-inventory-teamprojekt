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
