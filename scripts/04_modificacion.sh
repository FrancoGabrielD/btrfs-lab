#!/bin/bash

# Script: Modificación para demostrar Copy-on-Write

source ./lib.sh
check_root

if [[ ! -f /mnt/btrfs/datos/info.txt ]]; then
    echo "[ERROR] Archivo no existe"
    exit 1
fi

echo "Cambio importante en el archivo" >> /mnt/btrfs/datos/info.txt

echo "[OK] Archivo modificado"

# Mostrar uso de espacio (CoW)
btrfs filesystem du /mnt/btrfs
