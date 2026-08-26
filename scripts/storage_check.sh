
#!/bin/bash
echo "Speicher und Dateisystem"
echo "========================"
echo "Festplattenbelegung:"
df -h /
echo ""
echo "Arbeitsspeicher:"
free -h
echo ""
echo "Home-Verzeichnis:"
echo "$HOME"
