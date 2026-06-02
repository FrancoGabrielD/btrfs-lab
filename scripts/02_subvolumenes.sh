#!/bin/bash
set -e

# Script: Creación de subvolúmenes en Btrfs

# Verifica permisos de root
if [[ "$EUID" -ne 0 ]]; then
    echo "Ejecutar con sudo"
    exit 1
fi

# Crea subvolumen para datos
btrfs subvolume create /mnt/btrfs/datos

# Crea subvolumen para backups/snapshots
btrfs subvolume create /mnt/btrfs/backups

echo "Subvolúmenes creados correctamente"
