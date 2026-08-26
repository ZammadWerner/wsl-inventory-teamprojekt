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
