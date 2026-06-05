#!/bin/bash

# Script: Mostrar detalles completos del sistema BTRFS
# Incluye estructura, uso de espacio, subvolúmenes y snapshots

# Cargar funciones comunes
source ./lib.sh
check_root

echo "============================="
echo "INFORMACIÓN DEL SISTEMA BTRFS"
echo "============================="

# Validar que el sistema esté montado
if [[ ! -d /mnt/btrfs ]]; then
    echo "[ERROR] /mnt/btrfs no está montado"
    exit 1
fi

echo ""
echo "ESTRUCTURA DE DIRECTORIOS (/mnt/btrfs)"
echo "--------------------------------------"

# Mostrar estructura tipo árbol (si está instalado tree)
if command -v tree &> /dev/null; then
    tree /mnt/btrfs
else
    echo "[INFO] 'tree' no está instalado, usando ls -R"
    ls -R /mnt/btrfs
fi

echo ""
echo "SUBVOLUMENES DISPONIBLES"
echo "------------------------"
btrfs subvolume list /mnt/btrfs

echo ""
echo "USO DE ESPACIO (filesystem usage)"
echo "---------------------------------"
btrfs filesystem usage /mnt/btrfs

echo ""
echo "USO DETALLADO (du - Copy-on-Write)"
echo "----------------------------------"
btrfs filesystem du /mnt/btrfs

echo ""
echo "CONTENIDO DEL SNAPSHOT"
echo "----------------------"

if [[ -d /mnt/btrfs/backups/snapshot1 ]]; then
    ls -la /mnt/btrfs/backups/snapshot1
else
    echo "[INFO] Snapshot no encontrado"
fi

echo ""
echo "INFORMACIÓN GENERAL DEL FILESYSTEM"
echo "----------------------------------"
btrfs filesystem show /mnt/btrfs

echo ""
echo "=========================="
echo "[OK] Inspección completada"
echo "=========================="
