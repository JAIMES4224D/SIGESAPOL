# 🔍 Diagnóstico de Red — SIGESAPOL

> Análisis completo de conectividad hacia `sigesapol.dirsapolpnp.gob.pe` ejecutado en **Debian GNU/Linux 13 "Trixie"**

---

## 📁 Estructura del Proyecto

```
sigesapol-diagnostico/
├── index.html              ← Página web del informe
├── automatizacion.bash     ← Script de diagnóstico automatizado
├── reporte_red.txt         ← Reporte generado por el script
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

---

## 🧪 Pruebas Realizadas

| # | Herramienta | Comando | Resultado |
|---|-------------|---------|-----------|
| 1 | nslookup | `nslookup sigesapol.dirsapolpnp.gob.pe` | ✅ IP: 181.176.32.82 |
| 2 | ping | `ping -c 4 sigesapol.dirsapolpnp.gob.pe` | ✅ 0% packet loss |
| 3 | traceroute | `traceroute sigesapol.dirsapolpnp.gob.pe` | ✅ 12 hops |
| 4 | ss | `ss -tunap` | ✅ Conexiones activas |
| 5 | netstat | `netstat -an` | ✅ Estado de red |

---

## 📊 Resultados Clave

- **DNS:** `sigesapol.dirsapolpnp.gob.pe` → `181.176.32.82`
- **Ping:** 4/4 paquetes · 0% pérdida · avg **7.9 ms**
- **Traceroute:** 12 saltos (Gateway → Movistar PE → Destino)
- **TTL observado:** 242

---

## 🚀 Cómo usar el script

```bash
# Instalar dependencias
sudo apt install net-tools traceroute dnsutils -y

# Dar permisos de ejecución
chmod +x automatizacion.bash

# Ejecutar
./automatizacion.bash

# Ver resultados
cat reporte_red.txt
```

---

## 💻 Entorno

- **OS:** Debian GNU/Linux 13 "Trixie"
- **Kernel:** 6.12.86+deb13-amd64
- **Shell:** bash
- **Usuario:** `\DevPass @ jefdebian`
- **Fecha:** 24 de mayo 2026

---

*Diagnóstico realizado en el marco del curso de Redes · DIRSAPOL PNP*
