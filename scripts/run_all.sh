#!/bin/bash

# Script maestro para ejecutar toda la práctica

echo ">> INICIANDO DEMO BTRFS ..."

./01_setup_btrfs.sh
./02_subvolumenes.sh
./03_snapshot.sh
./04_modificacion.sh
./05_restore.sh

echo ">> DEMO COMPLETADA. "
