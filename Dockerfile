# Usa una imagen base oficial de Python
FROM python:3.10-slim

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos necesarios
COPY . /app

# Asegura permisos de ejecución para el script de arranque
RUN chmod +x start.sh

# Actualiza pip y instala dependencias
RUN pip install --upgrade pip && \
    pip install \
        transformers[tf] \
        tensorflow==2.15.1 \
        fastapi \
        uvicorn \
        python-multipart \
        numpy \
        pillow \
        requests \
        python-dotenv \
        google-cloud-dialogflow \
        google-auth \
        huggingface_hub \
        nest_asyncio \
        shutilwhich \
        uuid \
        pandas \

# Expone el puerto que usará la app (Google Cloud Run requiere el 8080)
EXPOSE 8080

# Comando por defecto al ejecutar el contenedor
CMD ["./start.sh"]
