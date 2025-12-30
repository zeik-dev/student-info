#!/bin/bash
# Script para construir el paquete .deb
# Proyecto Final - Sistemas Operativos

set -e

echo "Construyendo paquete student-info.deb..."

# Clean previous build
rm -rf student-info_deb/usr
rm -f student-info_*.deb

# Estructura
mkdir -p student-info_deb/usr/local/bin
mkdir -p student-info_deb/DEBIAN

# Ejecutable
cp student_info.py student-info_deb/usr/local/bin/student-info
chmod +x student-info_deb/usr/local/bin/student-info

# Crear archivo control
cat > student-info_deb/DEBIAN/control << EOF
Package: student-info
Version: 1.0-1
Section: utils
Priority: optional
Architecture: all
Depends: python3 (>= 3.8)
Maintainer: Randy A. Germosén Ureña <20180622@ce.pucmm.edu.do>
Description: Información del Estudiante - Proyecto Final SO
 Aplicación que muestra la información del estudiante
 ID: 1013-4707
 Nombre: Randy A. Germosén Ureña
 Correo: 20180622@ce.pucmm.edu.do
 Proyecto Final de Sistemas Operativos - PUCMM
EOF

# Changelog
mkdir -p student-info_deb/usr/share/doc/student-info
cat > student-info_deb/usr/share/doc/student-info/changelog << EOF
student-info (1.0-1) unstable; urgency=low

  * Initial Release
  * Muestra información del estudiante Randy A. Germosén Ureña
  * ID: 1013-4707
  * Proyecto Final Sistemas Operativos PUCMM

 -- Randy A. Germosén Ureña <20180622@ce.pucmm.edu.do>  Tue, 30 Dec 2024 12:00:00 -0400
EOF

# Permisos
chmod 755 student-info_deb/DEBIAN
chmod 644 student-info_deb/DEBIAN/control

# Build
dpkg-deb --build student-info_deb

# Rename
mv student-info_deb.deb student-info_1.0-1_all.deb

echo "✓ Paquete creado: student-info_1.0-1_all.deb"
echo ""
echo "Para instalar:"
echo "  sudo dpkg -i student-info_1.0-1_all.deb"
echo ""
echo "Para ejecutar:"
echo "  student-info"