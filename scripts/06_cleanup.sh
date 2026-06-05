#!/bin/bash

# Script: Limpieza del entorno

# Detener ejecución ante errores
set -e

# Verificar permisos
if [[ "$EUID" -ne 0 ]]; then
    echo "Ejecutar con sudo"
    exit 1
fi

# Confirmación antes de limpiar
echo "sto desmontará y eliminará datos en /mnt/btrfs"
read -p "Escriba SI para continuar: " CONFIRM

# Convertir a mayúsculas automáticamente
CONFIRM=$(echo "$CONFIRM" | tr '[:lower:]' '[:upper:]')

if [[ "$CONFIRM" != "SI" ]]; then
    echo "Operación cancelada"
    exit 0
fi

# Verificar si está montado antes de desmontar
if mount | grep /mnt/btrfs > /dev/null; then
    umount /mnt/btrfs
    echo "Sistema desmontado correctamente"
else
    echo "No estaba montado"
fi

# Eliminar punto de montaje
rm -rf /mnt/btrfs

echo "Limpieza finalizada"
