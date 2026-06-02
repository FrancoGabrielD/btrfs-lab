#!/bin/bash

# Script: Inicialización del sistema de archivos Btrfs

# Activa modo estricto:
# -e: corta el script si hay error
# -u: error si se usa una variable no definida
set -e
set -u

# Archivo de log para auditoría
LOG_FILE="btrfs-lab.log"

# Función para registrar mensajes informativos
log() {
    echo "[INFO] $1" | tee -a "$LOG_FILE"
}

# Función para manejar errores y salir
error_exit() {
    echo "[ERROR] $1" | tee -a "$LOG_FILE"
    exit 1
}

# Verifica que el script se ejecute como root
check_root() {
    if [[ "$EUID" -ne 0 ]]; then
        echo "Este script requiere permisos de sudo"
        exit 1
    fi
}

# Permite al usuario seleccionar el disco de forma segura
select_disk() {
    echo "Discos disponibles en el sistema:"
    lsblk -d -o NAME,SIZE,MODEL

    read -p "Ingrese el disco a utilizar (ej: sdb): " DISK

    # Verifica que el disco exista
    if [[ ! -b "/dev/$DISK" ]]; then
        error_exit "El disco seleccionado no existe"
    fi

    TARGET="/dev/$DISK"
}

# Solicita confirmación antes de una acción destructiva
confirm_action() {
    echo "DVERTENCIA: Se eliminarán TODOS los datos en $TARGET"
    read -p "Escriba SI para continuar o NO para cancelar: " CONFIRM

    # Convertir a mayúsculas automáticamente
    CONFIRM=$(echo "$CONFIRM" | tr '[:lower:]' '[:upper:]')

    if [[ "$CONFIRM" != "SI" ]]; then
        echo "Operación cancelada por el usuario"
        exit 0
    fi
}

# EJECUCIÓN

check_root          # Verifica permisos
select_disk         # Selecciona disco dinámicamente
confirm_action      # Pide confirmación

# Formatea el disco en Btrfs
mkfs.btrfs -f "$TARGET" || error_exit "Error al formatear el disco"

# Crea punto de montaje
mkdir -p /mnt/btrfs

# Monta el sistema de archivos
mount "$TARGET" /mnt/btrfs || error_exit "Error al montar el disco"

log "Disco formateado y montado correctamente en /mnt/btrfs"
