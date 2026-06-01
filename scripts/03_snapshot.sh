#!/bin/bash

# Script: Creación de archivo y snapshot inicial

echo ">> Creando archivo de prueba..."

echo "Version original del archivo" | sudo tee /mnt/btrfs/datos/info.txt

echo ">> Creando snapshot..."

sudo btrfs subvolume snapshot /mnt/btrfs/datos /mnt/btrfs/backups/snapshot1

echo ">> Snapshot creado."

echo ">> Contenido snapshot:"
sudo cat /mnt/btrfs/backups/snapshot1/info.txt
