#!/bin/bash

# Activar entorno si es necesario (descomenta si usas venv)
# source venv/bin/activate
export TF_ENABLE_ONEDNN_OPTS=0
export TF_CPP_MIN_LOG_LEVEL=2
# Ejecutar con gunicorn en modo producción
exec gunicorn -w 4 -b 0.0.0.0:${PORT:-8080} main:app
