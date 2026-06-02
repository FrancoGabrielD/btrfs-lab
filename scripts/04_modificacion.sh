#!/bin/bash

# Script: Modificación de archivo para demostrar CoW

set -e

if [[ "$EUID" -ne 0 ]]; then
    echo "Ejecutar con sudo"
    exit 1
fi

# Modificar archivo existente
echo "Cambio importante en el archivo" >> /mnt/btrfs/datos/info.txt

echo "[OK] Archivo modificado correctamente"
