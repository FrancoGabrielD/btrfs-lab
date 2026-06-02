#!/bin/bash

# Script maestro para ejecutar toda la práctica

# Detener ejecución si algo falla
set -e

echo "INICIO DEL PROCESO BTRFS LAB"

# Ejecutar scripts en orden
sudo bash 01_setup_btrfs.sh
sudo bash 02_subvolumenes.sh
sudo bash 03_snapshot.sh
sudo bash 04_modificacion.sh
sudo bash 05_restore.sh

echo "PROCESO COMPLETADO CORRECTAMENTE"
