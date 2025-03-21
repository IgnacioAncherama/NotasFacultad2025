#!/bin/bash

# Asegurarse de estar en el directorio del repositorio
cd "$(dirname "$0")"

# Agregar todos los archivos
git add .

# Verificar si hay cambios
if git diff-index --quiet HEAD --; then
    echo "No hay cambios para hacer commit."
else
    # Obtener fecha y hora actual en formato YYYY-MM-DD HH:MM:SS
    fecha=$(date "+%Y-%m-%d %H:%M:%S")
    
    # Hacer commit con mensaje automático
    git commit -m "Commit automático - $fecha"
    git push origin main
    echo "Cambios subidos a GitHub con mensaje: Commit automático - $fecha"
fi
