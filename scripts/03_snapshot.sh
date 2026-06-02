#!/bin/bash

# Script: Creación de archivo y snapshot inicial

set -e

if [[ "$EUID" -ne 0 ]]; then
    echo "Ejecutar con sudo"
    exit 1
fi

# Crear archivo antes del snapshot
echo "Version original del archivo" > /mnt/btrfs/datos/info.txt

# Crear snapshot del estado inicial
btrfs subvolume snapshot /mnt/btrfs/datos /mnt/btrfs/backups/snapshot1

echo "[OK] Snapshot creado correctamente con archivo inicial"
