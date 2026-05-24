# 🔍 Auditoría de Conectividad y Diagnóstico de Red — Sistema SIGESAPOL

> Documentación técnica, scripts de automatización y evidencias de conectividad web y de red orientadas al sistema **SIGESAPOL** de la Policía Nacional del Perú (PNP), ejecutadas desde un entorno controlado utilizando **Debian 13 "Trixie" (Linux)**.

El objetivo principal es diagnosticar el estado del enlace, la resolución de nombres de dominio (DNS), el enrutamiento de paquetes y la seguridad en el transporte de datos (HTTPS) hacia los servidores del sistema institucional.

---

## 🛠️ Herramientas y Requisitos Utilizados

Para la ejecución de las pruebas y auditorías locales se requiere un sistema basado en Linux Debian con las siguientes utilidades de red instaladas:

| Paquete | Uso |
|---------|-----|
| `dnsutils` | Resolución y consultas DNS (`nslookup`) |
| `iputils-ping` | Verificación de conectividad básica (`ping`) |
| `traceroute` | Análisis de saltos de red intermedios |
| `net-tools / iproute2` | Monitoreo de sockets y conexiones activas (`netstat`, `ss`) |
| Navegador Web | Chrome / Firefox para validación de certificado HTTPS |

---

## 🚀 Guía de Ejecución Rápida

### 1. Instalación de dependencias

```bash
sudo apt update && sudo apt install net-tools traceroute dnsutils -y
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
| 1 | **Resolución DNS** | `nslookup` | ✅ `181.176.32.82` |
| 2 | **Prueba de Conectividad (Ping)** | `ping -c 4` | ✅ 0% packet loss · avg 7.9 ms |
| 3 | **Traza de Ruta (Traceroute)** | `traceroute` | ✅ 12 saltos hasta destino |
| 4 | **Inspección de Conexiones Activas** | `ss -tunap` / `netstat -an` | ✅ Sockets verificados |
| 5 | **Acceso Seguro Web (HTTPS)** | Firefox / Chrome | ✅ Certificado SSL/TLS válido |
| 6 | **Rendimiento de Backend** | Navegador | ✅ Descarga de reportes Excel |

---

## 📁 Estructura del Repositorio

```
sigesapol-diagnostico/
├── index.html              ← Página web del informe técnico
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
    └── 13_reporte_parte2.jpeg
```

- **`/img/`** — Capturas de pantalla organizadas como evidencia digital del informe técnico.
- **`diagnostico_red.sh`** — Script en Bash que automatiza el proceso de recolección de métricas de red.
- **`reporte_red.txt`** — Archivo de salida generado automáticamente tras las pruebas.
- **`README.md`** — Presentación general y manual del proyecto (este archivo).

---

## 📈 Resultados Clave

- **DNS:** `sigesapol.dirsapolpnp.gob.pe` → `181.176.32.82`
- **Ping:** 4/4 paquetes · 0% pérdida · avg **7.9 ms** · TTL 242
- **Traceroute:** 12 saltos (Gateway → Red ISP → Movistar PE → Destino)
- **HTTPS:** Certificado SSL/TLS válido confirmado visualmente en navegador

---

## 💻 Entorno de Ejecución

| Campo | Valor |
|-------|-------|
| **OS** | Debian GNU/Linux 13 "Trixie" |
| **Kernel** | 6.12.86+deb13-amd64 |
| **Shell** | bash |
| **Usuario** | `\DevPass @ jefdebian` |
| **Fecha** | 24 de mayo 2026 |

---

*Diagnóstico realizado en el marco del curso de Redes · DIRSAPOL PNP*
