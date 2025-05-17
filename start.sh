#!/bin/bash

# Solo arrancar la app Flask, asumiendo que todo está instalado
export FLASK_APP=main.py
export FLASK_ENV=production
exec flask run --host=0.0.0.0 --port=${PORT:-8080}

