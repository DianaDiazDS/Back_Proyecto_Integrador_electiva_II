# Imagen base con Python
FROM python:3.10-slim

# Establecer directorio de trabajo
WORKDIR /app

# Copiar archivos necesarios
COPY requirements.txt ./
COPY main.py ./
COPY start.sh ./
COPY .env ./

# Instalar dependencias en tiempo de build
RUN pip install --upgrade pip \
 && pip install tensorflow==2.15.1 \
 && pip install transformers==4.35.0 \
 && pip install tokenizers==0.13.3 \
 && pip install -r requirements.txt

# Dar permisos de ejecución al script de arranque
RUN chmod +x start.sh

# Puerto que Cloud Run espera
ENV PORT=8080

# Comando para iniciar el contenedor
CMD ["./start.sh"]
