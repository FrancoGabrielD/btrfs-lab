#!/bin/bash

# Script: Setup inicial del entorno BTRFS

source ./lib.sh
check_root

echo "Discos disponibles:"
lsblk -d -o NAME,SIZE,MODEL

read -p "Ingrese el disco a utilizar (ej: /dev/sdb): " TARGET

validate_disk
confirm_action

# Formateo seguro
mkfs.btrfs -f "$TARGET"

# Montaje
mkdir -p /mnt/btrfs
mount "$TARGET" /mnt/btrfs

echo "[OK] Disco formateado y montado correctamente"
