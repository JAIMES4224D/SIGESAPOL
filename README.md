<div align="center">

# 🔍 Auditoría de Conectividad y Diagnóstico de Red
## Sistema SIGESAPOL · Policía Nacional del Perú

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Debian-OpenLogo.svg/960px-Debian-OpenLogo.svg.png" width="110">

### Documentación Técnica • Software Distribuido • Debian GNU/Linux 13 "Trixie"

![Linux](https://img.shields.io/badge/Linux-Debian%2013-A81D33?style=for-the-badge&logo=debian&logoColor=white)
![Bash](https://img.shields.io/badge/Bash-Scripting-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![Nmap](https://img.shields.io/badge/Nmap-Network%20Scanner-00457C?style=for-the-badge)
![Apache](https://img.shields.io/badge/Apache-2.4.6-D22128?style=for-the-badge&logo=apache)
![Laravel](https://img.shields.io/badge/Laravel-Web%20Framework-FF2D20?style=for-the-badge&logo=laravel&logoColor=white)
![OpenSSL](https://img.shields.io/badge/OpenSSL-TLS%2FSSL-721412?style=for-the-badge&logo=openssl)
![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github)

---

### Universidad Privada Norbert Wiener

### Escuela de Ingeniería de Sistemas

### Curso: Software Distribuido

### Docente:
**Ronald Miguel Serrano Hernandez**

---

## Integrantes

| Integrante | Código |
|------------|---------|
| Vilchez Espinoza, Melquecidec Juan Pablo | A2024202650 |
| Jaimes Passuni, Jeferson Jociney | A2022200607 |
| Marin Camacho, Diego Alonso | A2022200268 |
| Correa Noriega, Segundo Victor | A2022202296 |
| Yauri Pachas, Anderson | A2022104453 |

---

Junio 2026

</div>

---

# 📑 Tabla de Contenidos

- [Descripción del Proyecto](#-descripción-del-proyecto)
- [Objetivos](#-objetivos)
- [Objetivos Específicos](#-objetivos-específicos)
- [Arquitectura General](#-arquitectura-general)
- [Equipo del Proyecto](#-equipo-del-proyecto)
- [Tecnologías Utilizadas](#-tecnologías-utilizadas)
- [Requisitos](#-requisitos)
- [Instalación](#-instalación)
- [Guía de Ejecución](#-guía-de-ejecución)
- [Diagnóstico de Red](#-diagnóstico-de-red)
- [Resolución DNS](#-resolución-dns)
- [Prueba Ping](#-prueba-ping)
- [Traceroute](#-traceroute)
- [Conexiones Activas](#-conexiones-activas)
- [Escaneo Nmap](#-escaneo-nmap)
- [Verificación HTTPS](#-verificación-https)
- [Monitor del Sistema](#-monitor-del-sistema)
- [Script Bash](#-script-bash)
- [Reporte Generado](#-reporte-generado)
- [Arquitectura por Capas](#-arquitectura-por-capas)
- [Galería de Evidencias](#-galería-de-evidencias)
- [Resultados](#-resultados)
- [Conclusiones](#-conclusiones)
- [Estructura del Proyecto](#-estructura-del-proyecto)

---

# 📖 Descripción del Proyecto

Este proyecto presenta una **auditoría técnica de conectividad de red** realizada sobre el sistema institucional **SIGESAPOL**, perteneciente a la **Dirección de Salud de la Policía Nacional del Perú (DIRSAPOL PNP)**.

El objetivo principal fue verificar el correcto funcionamiento de la infraestructura de comunicación mediante herramientas de diagnóstico disponibles en sistemas GNU/Linux.

Durante el desarrollo del proyecto se evaluaron diversos componentes relacionados con la conectividad, resolución de nombres, disponibilidad del servicio, rutas de comunicación, estado de puertos, protocolos seguros de transporte y monitoreo del sistema operativo.

Todas las pruebas fueron ejecutadas desde un entorno controlado utilizando **Debian GNU/Linux 13 "Trixie"**, empleando herramientas ampliamente utilizadas en el ámbito profesional para auditorías y administración de redes.

El desarrollo incluye documentación técnica, evidencias fotográficas, automatización mediante Bash e interpretación de los resultados obtenidos.

---

# 🎯 Objetivos

## Objetivo General

Realizar una auditoría técnica de conectividad hacia el sistema SIGESAPOL utilizando herramientas de administración de redes en Linux para verificar la disponibilidad, accesibilidad, seguridad y estado operativo del servicio institucional.

---

# 🎯 Objetivos Específicos

- Verificar la correcta resolución DNS del dominio institucional.

- Comprobar la disponibilidad del servidor mediante solicitudes ICMP.

- Analizar la ruta seguida por los paquetes desde el cliente hasta el servidor.

- Identificar el estado de las conexiones TCP y UDP activas.

- Detectar dispositivos de seguridad mediante técnicas de escaneo con Nmap.

- Verificar el funcionamiento del protocolo HTTPS y del certificado SSL/TLS.

- Supervisar el consumo de recursos durante la ejecución de las pruebas.

- Automatizar todas las verificaciones mediante un script Bash.

- Generar un reporte consolidado con todos los resultados obtenidos.

---

# 🏗 Arquitectura General

El proyecto se desarrolla siguiendo una arquitectura por capas que representa el flujo completo desde el usuario hasta los servicios institucionales.

```text
Usuario
      │
      ▼
Internet
      │
      ▼
Monitoreo y Captura
      │
      ▼
Aplicaciones
      │
      ▼
Base de Datos
      │
      ▼
Salida y Reportes
      │
      ▼
Servicios Transversales
```

Cada una de estas capas será descrita detalladamente en la sección **Arquitectura del Sistema**, junto con las imágenes correspondientes.

---

# 👨‍💻 Equipo del Proyecto

| Nº | Integrante | Código | Responsabilidad |
|----|------------|---------|----------------|
|1|Vilchez Espinoza, Melquecidec Juan Pablo|A2024202650|Informe|
|2|Jaimes Passuni, Jeferson Jociney|A2022200607|Repositorio GitHub|
|3|Marin Camacho, Diego Alonso|A2022200268|Código Terminal|
|4|Correa Noriega, Segundo Victor|A2022202296|Recopilación de Información|
|5|Yauri Pachas, Anderson|A2022104453|Código Terminal|

---

# 💻 Tecnologías Utilizadas

- Debian GNU/Linux 13 Trixie
- Bash
- DNSUtils
- Ping
- Traceroute
- Netstat
- SS
- Nmap
- cURL
- htop
- Apache HTTP Server
- OpenSSL
- Laravel
- Git
- GitHub

---

# ⚙ Requisitos

## Sistema Operativo

Debian GNU/Linux 13 "Trixie"

## Kernel

6.12.86-amd64

## Shell

bash

## Herramientas necesarias

```bash
dnsutils
iputils-ping
traceroute
net-tools
iproute2
nmap
curl
htop
git
```

---

# 🚀 Instalación

Actualizar repositorios

```bash
sudo apt update
```

Instalar todas las dependencias

```bash
sudo apt install dnsutils iputils-ping traceroute net-tools iproute2 nmap curl htop git -y
```

Verificar instalación

```bash
nslookup --version

ping -V

traceroute --version

nmap --version

curl --version

htop
```

---

# ▶ Guía de Ejecución

Dar permisos al script

```bash
chmod +x automatizacion.bash
```

Ejecutar

```bash
./automatizacion.bash
```

Resultado

```text
reporte_red.txt
```

contendrá automáticamente todos los resultados del diagnóstico de red.

---
---

# 🌐 Diagnóstico de Red

Una vez preparado el entorno de trabajo en Debian GNU/Linux 13, se ejecutó una serie de pruebas para evaluar el estado de conectividad del sistema institucional **SIGESAPOL**, verificando la disponibilidad del servicio, el funcionamiento del DNS, el recorrido de la red, las conexiones activas, la seguridad HTTPS y el comportamiento del servidor frente a técnicas de reconocimiento.

Todas las pruebas fueron ejecutadas desde un equipo cliente bajo Linux utilizando herramientas ampliamente utilizadas por administradores de sistemas, ingenieros de redes y especialistas en ciberseguridad.

---

# 🔎 Resolución DNS

La primera etapa consistió en comprobar que el nombre del dominio institucional pudiera resolverse correctamente mediante el servicio DNS.

## Objetivo

Verificar que el servidor DNS entregue correctamente la dirección IP del sistema SIGESAPOL.

## Herramienta utilizada

```bash
nslookup
```

## Comando ejecutado

```bash
nslookup sigesapol.dirsapolpnp.gob.pe
```

## Resultado obtenido

| Campo | Valor |
|-------|-------|
| Dominio | sigesapol.dirsapolpnp.gob.pe |
| IP obtenida | 181.176.32.82 |
| Estado | Correcto |

## Interpretación

La resolución DNS fue satisfactoria.

El servidor DNS respondió correctamente devolviendo la dirección IP pública del sistema institucional, demostrando que el servicio de nombres funciona correctamente.

---

# 📡 Prueba de Conectividad (PING)

Una vez obtenida la dirección IP del servidor, se verificó la conectividad mediante paquetes ICMP.

## Objetivo

Determinar si el servidor responde correctamente a solicitudes ICMP y medir la latencia de comunicación.

## Herramienta

```bash
ping
```

## Comando

```bash
ping -c 4 sigesapol.dirsapolpnp.gob.pe
```

## Resultados

| Métrica | Valor |
|----------|-------|
| Paquetes enviados | 4 |
| Paquetes recibidos | 4 |
| Pérdida | 0 % |
| Latencia mínima | 5.0 ms |
| Latencia promedio | 7.9 ms |
| Latencia máxima | 15.5 ms |
| TTL | 242 |

## Interpretación

El servidor respondió correctamente a todas las solicitudes.

No se detectó pérdida de paquetes y la latencia obtenida fue baja, indicando una conexión estable.

---

# 🛰️ Análisis de Ruta (Traceroute)

Posteriormente se analizó el recorrido seguido por los paquetes hasta alcanzar el servidor institucional.

## Objetivo

Determinar los dispositivos intermedios utilizados durante la comunicación.

## Herramienta

```bash
traceroute
```

## Comando

```bash
traceroute sigesapol.dirsapolpnp.gob.pe
```

## Resumen

| Parámetro | Resultado |
|-----------|-----------|
| Saltos totales | 12 |
| Destino | 181.176.32.82 |
| Estado | Alcanzado |

## Flujo de comunicación

```text
Equipo Cliente
        │
        ▼
Gateway Local
        │
        ▼
ISP
        │
        ▼
Backbone Nacional
        │
        ▼
Movistar Perú
        │
        ▼
SIGESAPOL
```

## Interpretación

El recorrido mostró un tránsito normal a través del proveedor de Internet y la red nacional hasta llegar al servidor destino.

No se observaron interrupciones durante el recorrido.

---

# 🔌 Estado de las Conexiones Activas

Se verificó el estado de las conexiones activas del sistema operativo.

## Herramientas

```bash
ss
```

y

```bash
netstat
```

---

## ss

### Comando

```bash
ss -tunap
```

### Información obtenida

- Conexiones TCP activas.
- Conexiones UDP.
- Procesos asociados.
- Puertos abiertos.
- Estados LISTEN.
- Estados ESTABLISHED.

### Interpretación

Se verificó que las conexiones HTTPS utilizadas durante el diagnóstico permanecían activas y funcionando correctamente.

---

## netstat

### Comando

```bash
netstat -an
```

### Información obtenida

- Puertos TCP.
- Puertos UDP.
- Estado LISTEN.
- Estado ESTABLISHED.
- Conexiones activas.

### Interpretación

No se encontraron comportamientos anómalos durante el monitoreo.

---

# 🔥 Escaneo Avanzado mediante Nmap

Una de las pruebas más importantes consistió en realizar un reconocimiento del servidor utilizando Nmap.

## Objetivo

Determinar la exposición del servidor a nivel de red.

## Herramienta

```bash
Nmap 7.95
```

## Comando utilizado

```bash
sudo nmap -sS -sU -T4 -A -v -Pn 181.176.32.82
```

## Parámetros utilizados

| Opción | Función |
|---------|----------|
| -sS | SYN Stealth Scan |
| -sU | Escaneo UDP |
| -T4 | Mayor velocidad |
| -A | Detección de SO y servicios |
| -v | Salida detallada |
| -Pn | Omite Ping Discovery |

---

## Resultados

| Parámetro | Resultado |
|------------|-----------|
| Host | Activo |
| Distancia | 13 saltos |
| Sistema Detectado | F5 Networks |
| Tipo de dispositivo | Firewall / Load Balancer |
| TCP | 1000 puertos filtrados |
| UDP | Open / Filtered |

---

## Sistema Detectado

Nmap identificó que el servidor se encuentra protegido por un dispositivo:

```
F5 Networks TMOS
```

Este tipo de dispositivo cumple funciones de:

- Firewall
- Balanceador de carga
- Protección perimetral
- Distribución de tráfico

---

## Interpretación

La ausencia de puertos visibles no representa una falla.

Por el contrario, evidencia que el servidor institucional utiliza mecanismos de seguridad que impiden el reconocimiento directo desde Internet.

---

# 🔒 Verificación HTTPS

Posteriormente se verificó el funcionamiento del protocolo HTTPS.

## Herramienta

```bash
curl
```

## Comando

```bash
curl -k -I https://sigesapol.dirsapolpnp.gob.pe
```

## Resultado

| Campo | Valor |
|-------|-------|
| HTTP | 302 Found |
| Servidor | Apache 2.4.6 |
| Framework | Laravel |
| SSL | OpenSSL |
| Redirección | /auth/login |

---

## Interpretación

El servidor respondió correctamente mediante HTTPS.

Se verificó que utiliza:

- Apache
- OpenSSL
- Laravel
- Cookies seguras
- Tokens CSRF

Lo cual confirma que la aplicación utiliza mecanismos modernos de seguridad.

---

# 📊 Monitor del Sistema

Durante todas las pruebas se monitorizó el comportamiento del sistema utilizando htop.

## Herramienta

```bash
htop
```

## Información supervisada

- Uso de CPU
- Consumo de memoria RAM
- Procesos activos
- Hilos
- Load Average
- Uso de Swap

---

## Resultados

| Parámetro | Valor |
|-----------|-------|
| CPU | Estable |
| RAM | 2.58 GB |
| Swap | 0 KB |
| Procesos | 124 |
| Threads | 723 |

---

## Interpretación

El equipo mantuvo un comportamiento estable durante toda la auditoría.

No se detectó saturación de memoria ni uso excesivo del procesador.

---

# 🤖 Automatización mediante Bash

Con el propósito de simplificar el proceso de auditoría se desarrolló un script en Bash.

## Funciones del script

✔ Resolución DNS

✔ Ping

✔ Traceroute

✔ Exportación automática

✔ Generación del reporte

---

## Ejecución

```bash
chmod +x automatizacion.bash

./automatizacion.bash
```

---

# 📄 Reporte Automático

Al finalizar la ejecución se genera automáticamente el archivo

```text
reporte_red.txt
```

Este archivo contiene:

- Resultado DNS

- Resultado Ping

- Resultado Traceroute

- Información cronológica

- Registro completo del diagnóstico

---

# ✅ Resultados Técnicos Obtenidos

| Prueba | Estado |
|---------|--------|
| DNS | Correcto |
| Ping | Correcto |
| Traceroute | Correcto |
| SS | Correcto |
| Netstat | Correcto |
| Nmap | Correcto |
| HTTPS | Correcto |
| htop | Correcto |

---

# 📌 Conclusión Parcial

Todas las pruebas ejecutadas demostraron que el sistema SIGESAPOL se encuentra disponible desde Internet, responde correctamente a consultas DNS, mantiene conectividad estable, utiliza comunicación segura mediante HTTPS y se encuentra protegido por infraestructura de seguridad basada en dispositivos F5 Networks que limitan la exposición directa de servicios hacia el exterior.
---

# 🏛 Arquitectura del Sistema

La arquitectura implementada para este proyecto representa el flujo de comunicación entre el equipo cliente y el sistema institucional **SIGESAPOL**, desde el acceso del usuario hasta los servicios de soporte que garantizan la disponibilidad y seguridad de la plataforma.

Cada capa cumple una función específica dentro del proceso de comunicación y procesamiento de la información.

---

# 📊 Arquitectura General

```text
                         ┌──────────────────────────────┐
                         │       USUARIOS FINALES       │
                         └──────────────┬───────────────┘
                                        │
                                        ▼
                         ┌──────────────────────────────┐
                         │          INTERNET            │
                         └──────────────┬───────────────┘
                                        │
                                        ▼
                         ┌──────────────────────────────┐
                         │ MONITOREO Y CAPTURA DE RED   │
                         └──────────────┬───────────────┘
                                        │
                                        ▼
                         ┌──────────────────────────────┐
                         │        APLICACIONES          │
                         └──────────────┬───────────────┘
                                        │
                                        ▼
                         ┌──────────────────────────────┐
                         │      CAPA DE DATOS           │
                         └──────────────┬───────────────┘
                                        │
                                        ▼
                         ┌──────────────────────────────┐
                         │    SALIDA Y SOPORTE          │
                         └──────────────┬───────────────┘
                                        │
                                        ▼
                         ┌──────────────────────────────┐
                         │ SERVICIOS TRANSVERSALES      │
                         └──────────────────────────────┘
```

---

# 🧩 Arquitectura por Capas

---

# 🖥 Capa 1 — Usuarios y Clientes

Esta capa representa el punto de acceso de los usuarios al sistema SIGESAPOL.

Incluye:

- Personal administrativo.
- Médicos.
- Personal policial.
- Operadores del sistema.
- Navegadores Web.

Los usuarios interactúan con la plataforma mediante conexiones HTTPS.

<div align="center">

## Capa 1

<img src="img/CAPA%201%20USUARIOS%20CLIENTES.jpeg" width="900">

</div>

---

# 🌍 Capa 2 — Internet

Esta capa corresponde a la infraestructura pública utilizada para transportar la información.

Durante esta etapa los paquetes atraviesan:

- Router local.
- ISP.
- Backbone nacional.
- Red pública.
- Infraestructura del proveedor.

Todos los paquetes viajan utilizando protocolos TCP/IP.

<div align="center">

## Capa 2

<img src="img/CAPA%202%20INTERNET.jpeg" width="900">

</div>

---

# 📡 Capa 3 — Monitoreo y Captura

Esta capa corresponde al análisis realizado durante la auditoría.

Aquí se ejecutan todas las herramientas utilizadas durante el proyecto.

Herramientas empleadas:

- nslookup
- ping
- traceroute
- ss
- netstat
- nmap
- curl
- htop

Su finalidad es verificar:

- Disponibilidad
- Conectividad
- Latencia
- Seguridad
- Puertos
- Servicios

<div align="center">

## Capa 3

<img src="img/CAPA%203%20MONITOREO%20Y%20CAPTURA%20LOCAL.jpeg" width="900">

</div>

---

# ⚙ Capa 4 — Aplicaciones

Corresponde a la infraestructura lógica que responde las solicitudes realizadas por los usuarios.

Durante las pruebas se identificó:

| Servicio | Detectado |
|----------|-----------|
| Apache | ✔ |
| Laravel | ✔ |
| OpenSSL | ✔ |
| HTTPS | ✔ |

Esta capa procesa todas las solicitudes recibidas desde Internet.

<div align="center">

## Capa 4

<img src="img/CAPA%204%20APLICACIONES.jpeg" width="900">

</div>

---

# 🗄 Capa 5 — Datos

La información procesada por las aplicaciones es almacenada y organizada en esta capa.

Su función principal es:

- almacenamiento
- consulta
- procesamiento
- recuperación

La auditoría no interactúa directamente con esta capa, pero constituye un componente esencial dentro del funcionamiento del sistema.

<div align="center">

## Capa de Datos

<img src="img/CAPA%20DE%20DATOS%20(VIZUALIZACION%20FUNCIONAL).jpeg" width="900">

</div>

---

# 📊 Capa 6 — Salida y Soporte

Una vez procesada la información, el sistema entrega los resultados al usuario.

En esta etapa se generan:

- reportes
- consultas
- respuestas
- visualizaciones

Asimismo, intervienen los procesos de soporte y mantenimiento operativo.

<div align="center">

## Capa 6

<img src="img/CAPA%206%20SALIDA%20Y%20SOPORTE.jpeg" width="900">

</div>

---

# 🔐 Servicios Transversales

Todos los componentes anteriores dependen de un conjunto de servicios compartidos que garantizan la seguridad y disponibilidad del sistema.

Entre ellos se encuentran:

- autenticación
- autorización
- monitoreo
- auditoría
- seguridad
- administración
- registro de eventos

Estos servicios permanecen activos durante toda la operación del sistema.

<div align="center">

## Servicios Transversales

<img src="img/SERVICIO%20TRANVERSALES.jpeg" width="900">

</div>

---

# 🔄 Flujo General del Sistema

```mermaid
flowchart TD

A[Usuario]

B[Internet]

C[DNS]

D[Firewall F5]

E[Apache]

F[Laravel]

G[Base de Datos]

H[Respuesta HTTPS]

A --> B

B --> C

C --> D

D --> E

E --> F

F --> G

G --> H

H --> A
```

---

# 🔍 Flujo de la Auditoría

```mermaid
flowchart LR

A[Debian Linux]

B[nslookup]

C[ping]

D[traceroute]

E[ss]

F[netstat]

G[nmap]

H[curl]

I[htop]

J[Reporte]

A --> B

B --> C

C --> D

D --> E

E --> F

F --> G

G --> H

H --> I

I --> J
```

---

# 📌 Relación entre Capas

| Capa | Función |
|------|----------|
| Usuarios | Acceso al sistema |
| Internet | Transporte de paquetes |
| Monitoreo | Auditoría técnica |
| Aplicaciones | Procesamiento |
| Datos | Almacenamiento |
| Soporte | Reportes |
| Servicios | Seguridad y administración |

---

# ✅ Resultado de la Arquitectura

La arquitectura implementada demuestra una clara separación de responsabilidades entre cada componente del sistema.

Durante la auditoría se verificó que todas las capas participan correctamente en el flujo de comunicación, permitiendo una conexión estable hacia SIGESAPOL mediante protocolos seguros y mecanismos de protección perimetral basados en infraestructura **F5 Networks**, servidor **Apache**, framework **Laravel** y comunicación cifrada mediante **HTTPS**.
---

# 📸 Galería de Evidencias

Durante el desarrollo del proyecto se documentó cada una de las actividades realizadas mediante capturas de pantalla obtenidas directamente desde el entorno Debian GNU/Linux 13.

Estas evidencias permiten verificar la correcta ejecución de cada procedimiento descrito en este informe.

---

## Instalación de herramientas

| Evidencia |
|-----------|
| <img src="img/01_instalacion_herramientas.jpeg" width="900"> |

Instalación de todas las herramientas necesarias para realizar el diagnóstico de red.

---

## Resolución DNS

| Evidencia |
|-----------|
| <img src="img/02_dns_nslookup.jpeg" width="900"> |

Verificación del nombre de dominio mediante **nslookup**.

---

## Prueba de Conectividad

| Evidencia |
|-----------|
| <img src="img/03_ping_conectividad.jpeg" width="900"> |

Prueba ICMP hacia el servidor SIGESAPOL.

---

## Traceroute

| Evidencia |
|-----------|
| <img src="img/04_traceroute.jpeg" width="900"> |

Visualización completa del recorrido realizado por los paquetes.

---

## Conexiones activas

| Herramienta | Imagen |
|-------------|--------|
| ss | <img src="img/05_ss_tunap.jpeg" width="900"> |
| netstat | <img src="img/06_netstat_an.jpeg" width="900"> |
| netstat UNIX | <img src="img/07_netstat_unix1.jpeg" width="900"> |
| netstat UNIX | <img src="img/08_netstat_unix2.jpeg" width="900"> |
| netstat UNIX | <img src="img/09_netstat_unix3.jpeg" width="900"> |

---

## Desarrollo del Script

| Evidencia |
|-----------|
| <img src="img/10_script_nano.jpeg" width="900"> |

Creación del script Bash utilizando el editor Nano.

---

## Ejecución del Script

| Evidencia |
|-----------|
| <img src="img/11_ejecucion_script.jpeg" width="900"> |

El script automatiza la generación del reporte.

---

## Reporte generado

| Parte 1 | Parte 2 |
|----------|----------|
| <img src="img/12_reporte_parte1.jpeg"> | <img src="img/13_reporte_parte2.jpeg"> |

---

## Escaneo Nmap

| Inicio |
|---------|
| <img src="img/15_nmap_inicio.jpeg" width="900"> |

---

| Resultado |
|------------|
| <img src="img/14_nmap_resultado.jpeg" width="900"> |

---

| Progreso |
|-----------|
| <img src="img/19_nmap_progreso.jpeg" width="900"> |

---

## HTTPS

| Evidencia |
|-----------|
| <img src="img/17_curl_https.jpeg" width="900"> |

---

## Monitor del Sistema

| Evidencia |
|-----------|
| <img src="img/18_htop.jpeg" width="900"> |

---

# 📊 Resultados Finales

| Prueba | Estado |
|---------|--------|
| Instalación de herramientas | ✅ |
| DNS | ✅ |
| Ping | ✅ |
| Traceroute | ✅ |
| ss | ✅ |
| netstat | ✅ |
| Nmap | ✅ |
| HTTPS | ✅ |
| htop | ✅ |
| Script Bash | ✅ |
| Reporte | ✅ |

---

# 📈 Resumen Ejecutivo

| Parámetro | Resultado |
|-----------|-----------|
| Dominio | sigesapol.dirsapolpnp.gob.pe |
| Dirección IP | 181.176.32.82 |
| Conectividad | Correcta |
| Packet Loss | 0 % |
| Latencia Promedio | 7.9 ms |
| Saltos | 12 |
| Distancia Nmap | 13 Hops |
| HTTPS | Correcto |
| Firewall | F5 Networks |
| Estado | Operativo |

---

# 📂 Estructura del Proyecto

```text
sigesapol-diagnostico/
│
├── README.md
├── index.html
├── automatizacion.bash
├── reporte_red.txt
│
├── img/
│   ├── 01_instalacion_herramientas.jpeg
│   ├── 02_dns_nslookup.jpeg
│   ├── 03_ping_conectividad.jpeg
│   ├── 04_traceroute.jpeg
│   ├── 05_ss_tunap.jpeg
│   ├── 06_netstat_an.jpeg
│   ├── 07_netstat_unix1.jpeg
│   ├── 08_netstat_unix2.jpeg
│   ├── 09_netstat_unix3.jpeg
│   ├── 10_script_nano.jpeg
│   ├── 11_ejecucion_script.jpeg
│   ├── 12_reporte_parte1.jpeg
│   ├── 13_reporte_parte2.jpeg
│   ├── 14_nmap_resultado.jpeg
│   ├── 15_nmap_inicio.jpeg
│   ├── 17_curl_https.jpeg
│   ├── 18_htop.jpeg
│   ├── 19_nmap_progreso.jpeg
│   ├── CAPA 1 USUARIOS CLIENTES.jpeg
│   ├── CAPA 2 INTERNET.jpeg
│   ├── CAPA 3 MONITOREO Y CAPTURA LOCAL.jpeg
│   ├── CAPA 4 APLICACIONES.jpeg
│   ├── CAPA DE DATOS (VIZUALIZACION FUNCIONAL).jpeg
│   ├── CAPA 6 SALIDA Y SOPORTE.jpeg
│   └── SERVICIO TRANVERSALES.jpeg
```

---

# 🎯 Conclusiones

- Se confirmó la correcta resolución DNS del sistema SIGESAPOL.
- El servidor respondió satisfactoriamente a todas las solicitudes ICMP.
- La ruta de comunicación mostró estabilidad durante todo el recorrido.
- No se detectó pérdida de paquetes.
- El escaneo Nmap identificó un dispositivo F5 Networks que protege la infraestructura institucional.
- El servidor respondió mediante HTTPS utilizando Apache, OpenSSL y Laravel.
- El monitoreo mediante htop evidenció un consumo estable de recursos.
- La automatización mediante Bash permitió simplificar el proceso de auditoría y generar un reporte reproducible.

---

# 💻 Entorno de Ejecución

| Campo | Valor |
|-------|-------|
| Sistema Operativo | Debian GNU/Linux 13 "Trixie" |
| Kernel | 6.12.86+deb13-amd64 |
| Shell | Bash |
| Arquitectura | amd64 |
| Navegador | Firefox ESR |
| Terminal | GNOME Terminal |
| Fecha | Junio 2026 |

---

# 📚 Herramientas Utilizadas

- Debian GNU/Linux
- Bash
- DNSUtils
- Ping
- Traceroute
- SS
- Netstat
- Nmap
- cURL
- htop
- Apache HTTP Server
- OpenSSL
- Laravel
- Git
- GitHub

---

# 👥 Autores

Proyecto desarrollado por los estudiantes del curso **Software Distribuido** de la **Universidad Privada Norbert Wiener**.

| Integrante | Responsabilidad |
|------------|-----------------|
| Melquecidec Juan Pablo Vilchez Espinoza | Informe |
| Jeferson Jociney Jaimes Passuni | GitHub |
| Diego Alonso Marin Camacho | Código Terminal |
| Segundo Victor Correa Noriega | Recopilación de Información |
| Anderson Yauri Pachas | Código Terminal |

---

# 📄 Licencia

Este proyecto fue desarrollado con fines exclusivamente académicos para el curso de **Software Distribuido**.

No representa un producto oficial de la Policía Nacional del Perú ni de la Universidad Privada Norbert Wiener.

---

<div align="center">

## ⭐ Gracias por visitar este repositorio

**Proyecto de Diagnóstico de Conectividad y Auditoría de Red — Sistema SIGESAPOL**

Debian GNU/Linux • Bash • Nmap • Apache • Laravel • GitHub

</div>
