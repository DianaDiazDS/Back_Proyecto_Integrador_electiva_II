#!/bin/bash

# 1. Instala TensorFlow primero
pip install --upgrade pip
pip install transformers[tf]
pip install tensorflow==2.15.0
pip install transformers==4.35.0 
pip install tokenizers==0.13.3

# 2. Luego instala el resto de los paquetes
pip install -r requirements.txt

# 3. Inicia la app
uvicorn main:app --host 0.0.0.0 --port $PORT