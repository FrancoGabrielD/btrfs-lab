#!/bin/bash

# Script: Limpieza del entorno

echo ">> Eliminando snapshot..."
sudo btrfs subvolume delete /mnt/btrfs/backups/snapshot1

echo ">> Desmontando sistema..."
sudo umount /mnt/btrfs

echo ">> Limpieza completada."
