#!/bin/bash

# Librería común para todos los scripts

set -e

check_root() {
    if [[ "$EUID" -ne 0 ]]; then
        echo "[ERROR] Ejecutar con sudo"
        exit 1
    fi
}

confirm_action() {
    echo "ADVERTENCIA: Se eliminarán datos del dispositivo seleccionado"
    read -p "¿Desea continuar? (si/no): " CONFIRM

    CONFIRM=$(echo "$CONFIRM" | tr '[:upper:]' '[:lower:]')

    if [[ "$CONFIRM" != "si" && "$CONFIRM" != "s" ]]; then
        echo "Operación cancelada"
        exit 0
    fi
}

validate_disk() {
    if [[ "$TARGET" == "/dev/sda" ]]; then
        echo "[ERROR] No se permite usar /dev/sda (disco del sistema)"
        exit 1
    fi

    if [[ ! -b "$TARGET" ]]; then
        echo "[ERROR] Dispositivo inválido"
        exit 1
    fi
}
