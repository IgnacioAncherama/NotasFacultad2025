#!/bin/bash

# Asegurarse de estar en el directorio del repositorio
cd $(dirname "$0")

# Agregar todos los archivos
git add .

# Verificar si hay cambios
if git diff-index --quiet HEAD --; then
    echo "No hay cambios para hacer commit."
else
    # Si hay cambios, hacer commit
    git commit -m "Commit automático"
    git push origin main
    echo "Cambios subidos a GitHub."
fi
