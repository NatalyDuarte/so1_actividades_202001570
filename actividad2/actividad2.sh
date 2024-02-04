#!/bin/bash

read -p "Ingrese el nombre de usuario: " GITHUB_USER

URL="https://api.github.com/users/$GITHUB_USER"
DATA=$(curl -s "$URL")

ID=$(echo "$DATA" | jq -r '.id')
CREATEDAT=$(echo "$DATA" | jq -r '.created_at')

echo "Hola $GITHUB_USER. User ID: $ID. Cuenta creada el: $CREATEDAT."

LOG_DIR="/tmp/$(date +'%Y-%m-%d')"
LOG_FILE="$LOG_DIR/saludos.log"

mkdir -p "$LOG_DIR"

echo "$(date +'%Y-%m-%d %H:%M:%S') - Hola $GITHUB_USER. User ID: $ID. Cuenta creada el: $CREATEDAT." >> "$LOG_FILE"

echo "Log guardado en: $LOG_FILE"

# Crear cronjob para que el script se ejecute cada 5 minutos
#contrab -e

