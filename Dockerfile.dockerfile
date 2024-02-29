# Usar una imagen base de Python
FROM python:3.8-slim-buster

# Establecer un directorio de trabajo
WORKDIR /app

# Copiar los archivos de requisitos e instalar las dependencias
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Copiar el resto de los archivos de la aplicación
COPY . .

# Exponer el puerto en el que se ejecutará la aplicación
EXPOSE 5000

# Definir el comando para ejecutar la aplicación
CMD ["python", "app.py"]