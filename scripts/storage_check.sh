
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
#!/bin/bash
echo "Speicher und Dateisystem"
echo "========================"
echo "Festplattenbelegung und Dateisystemtyp:"
df -hT /
echo ""
echo "Inode-Belegung des Wurzelverzeichnisses:"
df -i /
echo ""
echo "Arbeitsspeicher:"
free -h
echo ""
echo "Home-Verzeichnis:"
echo "$HOME"
