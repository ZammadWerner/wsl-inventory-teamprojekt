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
