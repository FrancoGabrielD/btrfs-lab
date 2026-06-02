#!/bin/bash

# Script: Simulación de pérdida y restauración de datos

# Detener ejecución ante errores
set -e

# Verificar permisos
if [[ "$EUID" -ne 0 ]]; then
    echo "Ejecutar con sudo"
    exit 1
fi

# Restaurar archivo desde snapshot
cp /mnt/btrfs/backups/snapshot1/info.txt /mnt/btrfs/datos/info.txt

echo "Archivo restaurado correctamente desde snapshot"
