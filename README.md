# 🧾 Proyecto: Exploración de Btrfs en Linux

## 📌 Descripción

Este proyecto tiene como objetivo demostrar el funcionamiento del sistema de archivos **Btrfs (B-tree File System)** en un entorno Linux, utilizando una máquina virtual con Ubuntu Server.

Se implementan y analizan características clave como:

* Subvolúmenes
* Snapshots
* Copy-on-Write (CoW)
* Recuperación de datos

---

## 🎯 Objetivos

* Comprender el funcionamiento de Btrfs
* Implementar subvolúmenes y snapshots
* Demostrar el mecanismo Copy-on-Write
* Simular escenarios de pérdida y recuperación de datos

---

## 🖥️ Entorno de trabajo

* Sistema operativo: Ubuntu Server
* Plataforma: VirtualBox
* Disco adicional: `/dev/sdb`
* Herramientas utilizadas:

  * `btrfs-progs`
  * `bash`
  * `git`

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
│   └── output.txt
├── docs/
└── README.md
```

---

## ⚙️ Requisitos

* Linux (Ubuntu Server recomendado)
* Acceso root o sudo
* Disco adicional disponible (ej: `/dev/sdb`)

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

## 🔬 Descripción de scripts

* `01_setup_btrfs.sh` → Inicializa el sistema de archivos Btrfs
* `02_subvolumenes.sh` → Crea subvolúmenes
* `03_snapshot.sh` → Genera snapshot inicial
* `04_modificacion.sh` → Modifica datos y demuestra Copy-on-Write
* `05_restore.sh` → Recupera datos desde snapshot
* `06_cleanup.sh` → Limpieza del entorno (opcional)
* `run_all.sh` → Ejecuta toda la práctica automáticamente

---

## 📸 Evidencia

En la carpeta `evidencia/` se incluyen:

* Salidas de comandos
* Registro de ejecución (`script output.txt`)
* Resultados obtenidos durante la práctica

---

## 🧠 Conceptos demostrados

* Copy-on-Write (CoW)
* Snapshots eficientes
* Organización mediante subvolúmenes
* Recuperación de datos sin pérdida

---

## 📚 Referencias

* https://btrfs.readthedocs.io
* https://wiki.archlinux.org/title/Btrfs
* Manual de Linux (`man btrfs`)

---

## 👨‍💻 Autor

* Nombre: Franco Gabriel Diaz
* Materia: Software Libre / Administración de Sistemas Avanzada
* Año: 2026

---
