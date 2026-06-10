# 🔍 Auditoría de Conectividad y Diagnóstico de Red — Sistema SIGESAPOL

> Documentación técnica, scripts de automatización y evidencias de conectividad web y de red orientadas al sistema **SIGESAPOL** de la Policía Nacional del Perú (PNP), ejecutadas desde un entorno controlado utilizando **Debian 13 "Trixie" (Linux)**.

El objetivo principal es diagnosticar el estado del enlace, la resolución de nombres de dominio (DNS), el enrutamiento de paquetes y la seguridad en el transporte de datos (HTTPS) hacia los servidores del sistema institucional.

---

## � Equipo del Proyecto

| # | Apellidos y Nombres | Código | Responsabilidad |
|---|---------------------|--------|-----------------|
| 1 | Vilchez Espinoza, Melquecidec Juan Pablo | A2024202650 | Informe |
| 2 | Jaimes Passuni, Jeferson Jociney | A2022200607 | GitHub ✓ |
| 3 | Marin Camacho, Diego Alonso | A2022200268 | Código Terminal |
| 4 | Correa Noriega, Segundo Victor | A2022202296 | Recopilación de Info |
| 5 | Yauri Pachas, Anderson | A2022104453 | Código Terminal |

**Curso:** Software Distribuido · Sección IS8N1 · Universidad Norbert Wiener

**Docente:** Ronald Miguel Serrano Hernandez

---

## 🛠️ Herramientas y Requisitos Utilizados

Para la ejecución de las pruebas y auditorías locales se requiere un sistema basado en Linux Debian con las siguientes utilidades de red instaladas:

| Paquete | Uso |
|---------|-----|
| `dnsutils` | Resolución y consultas DNS (`nslookup`) |
| `iputils-ping` | Verificación de conectividad básica (`ping`) |
| `traceroute` | Análisis de saltos de red intermedios |
| `net-tools / iproute2` | Monitoreo de sockets y conexiones activas (`netstat`, `ss`) |
| `nmap` | Escaneo de puertos y detección de SO/Firewall |
| `curl` | Verificación de cabeceras HTTPS |
| `htop` | Monitoreo de recursos del sistema |
| Navegador Web | Chrome / Firefox para validación de certificado HTTPS |

---

## 🚀 Guía de Ejecución Rápida

### 1. Instalación de dependencias

```bash
sudo apt update && sudo apt install net-tools traceroute dnsutils nmap curl htop -y
```

### 2. Ejecución del Script de Automatización

```bash
chmod +x diagnostico_red.sh
./diagnostico_red.sh
```

Esto ejecuta todas las pruebas en un solo paso y exporta los resultados a `reporte_red.txt`.

---

## 📊 Matriz de Actividades Técnicas Evaluadas

| # | Actividad | Herramienta | Resultado |
|---|-----------|-------------|-----------|
| 1 | Resolución DNS | `nslookup` | ✅ `181.176.32.82` |
| 2 | Prueba de Conectividad (Ping) | `ping -c 4` | ✅ 0% packet loss · avg 7.9 ms |
| 3 | Traza de Ruta (Traceroute) | `traceroute` | ✅ 12 saltos hasta destino |
| 4 | Inspección de Conexiones Activas | `ss -tunap` / `netstat -an` | ✅ Sockets verificados |
| 5 | Escaneo de Puertos y OS | `nmap -sS -sU -T4 -A -v -Pn` | ✅ Firewall/Load Balancer F5 Networks · 13 hops |
| 6 | Verificación HTTPS | `curl -k -I` | ✅ HTTP 302 · Apache · Laravel · OpenSSL FIPS |
| 7 | Monitor de Procesos | `htop` | ✅ RAM activa monitoreada · Carga estable |
| 8 | Acceso Seguro Web (HTTPS) | Firefox / Chrome | ✅ Certificado SSL/TLS válido |

---

## 📈 Resultados Clave

- **DNS:** `sigesapol.dirsapolpnp.gob.pe` → `181.176.32.82`
- **Ping:** 4/4 paquetes · 0% pérdida · avg **7.9 ms** · TTL 242
- **Traceroute:** 12 saltos (Gateway → Red ISP → Movistar PE → Destino)
- **Nmap:** Dispositivo tipo **Firewall/Load Balancer** · F5 Networks TMOS · 13 hops
- **HTTPS:** Certificado SSL/TLS válido · Apache 2.4.6 · Laravel · Redirección a `/auth/login`
- **Estado general:** **OPERATIVO** · Conectividad de red confirmada

---

## 📁 Estructura del Repositorio

```
sigesapol-diagnostico/
├── index.html              ← Página web del informe técnico (modo oscuro/claro)
├── diagnostico_red.sh      ← Script Bash de automatización
├── reporte_red.txt         ← Log generado automáticamente por el script
├── README.md               ← Este archivo
└── img/
    ├── 01_instalacion_herramientas.jpeg
    ├── 02_dns_nslookup.jpeg
    ├── 03_ping_conectividad.jpeg
    ├── 04_traceroute.jpeg
    ├── 05_ss_tunap.jpeg
    ├── 06_netstat_an.jpeg
    ├── 07_netstat_unix1.jpeg
    ├── 08_netstat_unix2.jpeg
    ├── 09_netstat_unix3.jpeg
    ├── 10_script_nano.jpeg
    ├── 11_ejecucion_script.jpeg
    ├── 12_reporte_parte1.jpeg
    ├── 13_reporte_parte2.jpeg
    ├── 14_nmap_resultado.jpeg
    ├── 15_nmap_inicio.jpeg
    ├── 17_curl_https.jpeg
    ├── 18_htop.jpeg
    └── 19_nmap_progreso.jpeg
```

- **`/img/`** — Capturas de pantalla organizadas como evidencia digital del informe técnico.
- **`diagnostico_red.sh`** — Script en Bash que automatiza el proceso de recolección de métricas de red.
- **`reporte_red.txt`** — Archivo de salida generado automáticamente tras las pruebas.
- **`index.html`** — Informe visual interactivo estructurado.
- **`README.md`** — Presentación general y manual del proyecto (este archivo).

---

## 🌓 Características del Informe Web

El archivo `index.html` incluye:

- **Diseño tipo terminal** con efectos visuales basados en la paleta de Debian.
- **Galería de evidencias** con lightbox integrado para auditoría visual.
- **Visualización estructurada de traceroute** paso a paso.
- **Bloques de código** con formato limpio y legible.
- **Totalmente responsive** (adaptable a múltiples resoluciones de pantalla).

---

## 💻 Entorno de Ejecución

| Campo | Valor |
|-------|-------|
| **OS** | Debian GNU/Linux 13 "Trixie" |
| **Kernel** | 6.12.86+deb13-amd64 |
| **Shell** | bash |
| **Usuario** | `\DevPass @ jefdebian` |
| **Fecha** | Junio de 2026 |

---

## 📝 Script de Automatización (`diagnostico_red.sh`)

```bash
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
```

---

## 🔗 Enlaces de Interés

- [Ver informe web (index.html)](https://www.google.com/search?q=./index.html)
- [Ver script de automatización](https://www.google.com/search?q=./diagnostico_red.sh)
- [Ver reporte generado](https://www.google.com/search?q=./reporte_red.txt)

*Diagnóstico realizado en el marco del curso de Software Distribuido · DIRSAPOL PNP · Hospital Nacional PNP Luis N. Sáenz*
