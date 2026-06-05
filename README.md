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
│   ├── 07_show_details.sh
│   ├── lib.sh
│   └── run_all.sh
├── evidencia/
│   ├── details_system.jpeg
│   ├── estructura_snapshot.jpeg
│   ├── lsblk.jpeg
│   ├── output.txt
│   ├── run_all_final.jpeg
│   ├── snapshot_demo_final.jpeg
│   └── subvolumenes.jpeg
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

## 🛠️ Comandos útiles de Btrfs

Durante el desarrollo de este laboratorio se utilizaron distintos comandos fundamentales para la administración e inspección de sistemas de archivos Btrfs:

- `btrfs subvolume list /mnt/btrfs`  
  Permite listar todos los subvolúmenes existentes, incluyendo snapshots.

- `btrfs filesystem usage /mnt/btrfs`  
  Muestra el uso real del sistema de archivos, diferenciando entre datos, metadatos y espacio libre.

- `btrfs filesystem df /mnt/btrfs`  
  Proporciona estadísticas del uso del espacio por tipo de bloque.

- `btrfs filesystem du /mnt/btrfs`  
  Permite analizar el uso real de espacio considerando el comportamiento Copy-on-Write.

- `btrfs subvolume snapshot /mnt/btrfs/datos /mnt/btrfs/backups/snapshot1`  
  Crea un snapshot de un subvolumen.

- `btrfs subvolume delete <ruta>`  
  Elimina un subvolumen o snapshot.

- `ls -la` y `tree`  
  Utilizados para inspeccionar la estructura de directorios y contenido de snapshots.

Estos comandos fueron integrados en scripts para automatizar la gestión del sistema. tambien se encuentra disponible el Script `07_show_details.sh` que brinda informacion detallada.

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
## 📚 ¿Qué aprendí?

A lo largo de este trabajo práctico se comprendieron conceptos clave del sistema de archivos Btrfs:

- **Copy-on-Write (CoW):**  
  Btrfs no duplica los datos inmediatamente al crear un snapshot. En su lugar, comparte bloques hasta que se modifican, lo que permite un uso eficiente del espacio.

- **Snapshots eficientes:**  
  Los snapshots ocupan poco espacio inicialmente, ya que solo registran diferencias respecto al estado original.

- **Gestión avanzada del almacenamiento:**  
  Btrfs permite separar datos y backups mediante subvolúmenes, facilitando la organización y recuperación.

- **Uso real vs uso lógico:**  
  Herramientas como `btrfs filesystem du` muestran el uso real del disco, que puede diferir del tamaño aparente de los archivos.

- **Importancia de la inspección del sistema:**  
  Comandos como `btrfs filesystem usage` permiten entender cómo se distribuyen los datos internamente.

En conclusión, Btrfs ofrece un enfoque moderno y eficiente para la gestión de sistemas de archivos, destacándose por su flexibilidad, seguridad y optimización del espacio.

---

## 👨‍💻 Autor

* Nombre: Franco Gabriel Diaz
* Materia: Software Libre / Administración de Sistemas Avanzada
* Año: 2026

---
