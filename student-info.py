#!/usr/bin/env python3

import sys
import os

def mostrar_info():
    
    info = """
╔════════════════════════════════════════════════════════════╗
║               ✦  TARJETA DE PRESENTACIÓN  ✦                ║
╠════════════════════════════════════════════════════════════╣
║                                                            ║
║  ID:       1013-4707                                       ║
║  Nombre:   Randy A. Germosén Ureña                         ║
║  Correo:   20180622@ce.pucmm.edu.do                        ║
║  Profesor: Carlos Camacho                                  ║
║                                                            ║
║  Materia:  Sistemas Operativos (ICC331)                    ║
║  Proyecto: Empaquetado de Aplicación en Linux              ║
║                                                            ║
║      Pontificia Universidad Católica Madre y Maestra       ║
║      Randy Germosén© - Todos los derechos reservados       ║
╚════════════════════════════════════════════════════════════╝
    """
    
    print(info)

def main():
    """Función principal"""
    if len(sys.argv) > 1 and sys.argv[1] in ['--help', '-h']:
        print("Uso: student-info")
        print("Muestra la información del estudiante del proyecto")
        return
    
    mostrar_info()

if __name__ == "__main__":
    main()