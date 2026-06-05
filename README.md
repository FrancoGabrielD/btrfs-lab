# 🧾 Proyecto: Exploración de Btrfs en Linux

## 📌 Descripción

Este proyecto tiene como objetivo demostrar el funcionamiento del sistema de archivos **Btrfs (B-tree File System)** en un entorno Linux, utilizando una máquina virtual con Ubuntu Server.

Se implementan y analizan características clave como:

* Subvolúmenes
* Snapshots
* Copy-on-Write (CoW)
* Recuperación de datos

Además, se incorporan buenas prácticas como:

* Validación de entrada del usuario
* Manejo de errores
* Seguridad en ejecución de scripts

---

## 🎯 Objetivos

* Comprender el funcionamiento de Btrfs
* Implementar subvolúmenes y snapshots
* Demostrar el mecanismo Copy-on-Write
* Simular escenarios de pérdida y recuperación de datos

---

## ⚙️ Requisitos

* Sistema Linux (Ubuntu recomendado)
* Permisos de superusuario (sudo)
* Paquete btrfs-progs instalado

---

## 📁 Estructura del proyecto

```
btrfs-lab/
├── scripts/
│   ├── 01_setup_btrfs.sh
│   ├── 02_subvolumenes.sh
│   ├── 03_snapshot.sh
│   ├── 04_modificacion.sh
│   ├── 05_restore.sh
│   ├── 06_cleanup.sh
│   └── run_all.sh
├── evidencia/
│   ├── estructura_snapshot.jpeg
│   ├── lsblk.jpeg
│   ├── output.txt
│   ├── run_all_final.jpeg
│   ├── snapshot_demo_final.jpeg
│   ├── subvolumenes.jpeg
└── README.md
└── LICENSE
```
---

## 🚀 Ejecución

Clonar el repositorio:

```
git clone https://github.com/TU-USUARIO/btrfs-lab.git
cd btrfs-lab/scripts
```

Dar permisos de ejecución:

```
chmod +x *.sh
```

Ejecutar la demo completa:

```
./run_all.sh
```

---

## 🔄 Flujo de funcionamiento

El laboratorio sigue el siguiente proceso:

1. Preparación del entorno
   * Selección del dispositivo
   * Formateo en BTRFS
   * Montaje del sistema
2. Creación de subvolúmenes
   * /datos
   * /backups
3. Creación de snapshot inicial
   * Se crea un archivo info.txt
   * Se genera un snapshot del estado original
4. Modificación del archivo
   * Se altera el contenido para simular cambios o corrupción
5. Restauración
   * Se recupera el archivo original desde el snapshot
6. Limpieza
   * Eliminación de recursos creados (opcional)

---

## 🔐 Seguridad y buenas prácticas implementadas
* Confirmación antes de operaciones destructivas
* Validación de entradas del usuario
* Uso de rutas absolutas
* Verificación de existencia de archivos antes de operar
* Control de errores con set -e
* Requerimiento de permisos de superusuario

---

## ⚠️ Advertencias
* Este proyecto elimina datos del dispositivo seleccionado
* No utilizar en discos con información importante
* Usar preferentemente en máquinas virtuales

---

## 🎯 Objetivo académico

Demostrar el uso práctico de BTRFS y comprender:

* Gestión avanzada de almacenamiento
* Importancia de snapshots
* Recuperación ante fallos
* Automatización mediante scripts

---

## 👨‍💻 Autor

* Nombre: Franco Gabriel Diaz
* Materia: Software Libre / Administración de Sistemas Avanzada
* Año: 2026

---
