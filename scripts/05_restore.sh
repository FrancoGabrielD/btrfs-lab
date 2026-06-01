#!/bin/bash

# Script: Simulación de pérdida y restauración de datos

echo ">> Eliminando archivo original..."
sudo rm /mnt/btrfs/datos/info.txt

echo ">> Restaurando desde snapshot..."
sudo cp /mnt/btrfs/backups/snapshot1/info.txt /mnt/btrfs/datos/

echo ">> Verificando restauración..."
sudo cat /mnt/btrfs/datos/info.txt

echo ">> Restauración completada."
