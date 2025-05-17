#!/bin/bash

# Solo arrancar la app, asumiendo que todo está instalado
exec uvicorn main:app --host 0.0.0.0 --port ${PORT:-8080}
