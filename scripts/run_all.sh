#!/bin/bash

# Script: Ejecución completa del laboratorio

set -e

if [[ "$EUID" -ne 0 ]]; then
    echo "[ERROR] Ejecutar con sudo"
    exit 1
fi

echo "INICIO DEL PROCESO BTRFS LAB"

bash 01_setup_btrfs.sh
bash 02_subvolumenes.sh
bash 03_snapshot.sh
bash 04_modificacion.sh
bash 05_restore.sh

# Opcional
# bash 06_cleanup.sh

echo "[OK] Proceso completo finalizado"
