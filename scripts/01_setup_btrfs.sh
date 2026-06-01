#!/bin/bash

# Script: Inicialización del sistema de archivos Btrfs
# Este script formatea el disco /dev/sdb y lo monta en /mnt/btrfs

echo ">> Limpiando firmas previas del disco..."
sudo wipefs -a /dev/sdb

echo ">> Creando sistema de archivos Btrfs..."
sudo mkfs.btrfs /dev/sdb

echo ">> Creando punto de montaje..."
sudo mkdir -p /mnt/btrfs

echo ">> Montando sistema de archivos..."
sudo mount /dev/sdb /mnt/btrfs

echo ">> Verificando montaje..."
df -h | grep btrfs

echo ">> Setup completado."
