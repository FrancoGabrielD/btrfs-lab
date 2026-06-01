#!/bin/bash

# Script: Creación de subvolúmenes en Btrfs

echo ">> Creando subvolúmenes..."

sudo btrfs subvolume create /mnt/btrfs/datos
sudo btrfs subvolume create /mnt/btrfs/backups

echo ">> Listando subvolúmenes..."
sudo btrfs subvolume list /mnt/btrfs

echo ">> Subvolúmenes creados correctamente."
