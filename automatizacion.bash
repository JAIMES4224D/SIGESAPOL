#!/bin/bash
# Script de diagnóstico de red para SIGESAPOL
echo "=== INICIANDO PRUEBAS DE RED SIGESAPOL ===" > reporte_red.txt

echo -e "\n[1] RESOLUCIÓN DNS:" >> reporte_red.txt
nslookup sigesapol.dirsapolpnp.gob.pe >> reporte_red.txt

echo -e "\n[2] PRUEBA DE CONECTIVIDAD (PING):" >> reporte_red.txt
ping -c 4 sigesapol.dirsapolpnp.gob.pe >> reporte_red.txt

echo -e "\n[3] TRAZA DE RUTA (TRACEROUTE):" >> reporte_red.txt
traceroute sigesapol.dirsapolpnp.gob.pe >> reporte_red.txt

echo "=== PRUEBAS FINALIZADAS ===" >> reporte_red.txt
echo "Resultados guardados en reporte_red.txt"
