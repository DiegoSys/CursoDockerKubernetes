# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo de requisitos en el contenedor
COPY requirements.txt .

# Instala las dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia el archivo de la aplicación Flask en el contenedor
COPY app.py .

# Expone el puerto 5000 para Flask
EXPOSE 5000

# Comando para iniciar la aplicación Flask
CMD ["python", "app.py"]