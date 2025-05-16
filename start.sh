#!/bin/bash

# 1. Instala TensorFlow primero
pip install tensorflow

# 2. Luego instala el resto de los paquetes
pip install -r requirements.txt

# 3. Inicia la app
uvicorn main:app --host 0.0.0.0 --port 8000