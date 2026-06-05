#!/bin/bash

# Script: Restauración completa desde snapshot

source ./lib.sh
check_root

if [[ ! -d /mnt/btrfs/backups/snapshot1 ]]; then
    echo "[ERROR] Snapshot no existe"
    exit 1
fi

confirm_action

# Eliminar subvolumen actual
btrfs subvolume delete /mnt/btrfs/datos

# Restaurar snapshot como nuevo subvolumen
btrfs subvolume snapshot /mnt/btrfs/backups/snapshot1 /mnt/btrfs/datos

echo "[OK] Rollback completo realizado"
