# Usamos una imagen base de Ubuntu
FROM ubuntu:latest

# Instalamos Apache y SSH
RUN apt-get update && \
    apt-get install -y apache2 openssh-server

# Creamos un usuario para correr la aplicación
RUN useradd -m myappuser

# Levantamos los servicios de Apache y SSH
RUN service apache2 start && service ssh start

# Copiamos el contenido de una página web de ejemplo
COPY Landing-Page /var/www/html/

# Puerto que expone Apache (puerto 80)
EXPOSE 80

# Comando que se ejecuta al arrancar el contenedor
CMD ["apache2ctl", "-D", "FOREGROUND"]
