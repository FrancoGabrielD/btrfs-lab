#!/bin/bash

# Script: Crear archivo inicial + snapshot

source ./lib.sh
check_root

# Validar que exista montaje
if [[ ! -d /mnt/btrfs/datos ]]; then
    echo "[ERROR] Subvolumen /datos no existe"
    exit 1
fi

# Crear archivo base
echo "Version original del archivo" > /mnt/btrfs/datos/info.txt

# Crear snapshot
btrfs subvolume snapshot /mnt/btrfs/datos /mnt/btrfs/backups/snapshot1

echo "[OK] Snapshot creado con estado inicial"

# Mostrar info (mejora didáctica)
btrfs subvolume list /mnt/btrfs
