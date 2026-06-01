#!/bin/bash

# Script: Modificación de archivo para demostrar Copy-on-Write

echo ">> Modificando archivo original..."

echo "Cambio importante en el archivo" | sudo tee -a /mnt/btrfs/datos/info.txt

echo ">> Contenido actual (datos):"
sudo cat /mnt/btrfs/datos/info.txt

echo ">> Contenido snapshot (sin cambios):"
sudo cat /mnt/btrfs/backups/snapshot1/info.txt

echo ">> Diferencia demostrada (Copy-on-Write)."
