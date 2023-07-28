# Landing Page Docker Container

Este repositorio contiene un Dockerfile para crear un contenedor con una Landing Page básica basada en Apache y SSH. La imagen del contenedor se encuentra en Dockerhub.

## Pasos para arrancar el contenedor

1. **Descargar la imagen desde Dockerhub:**
docker pull duckystripe/landing-page:DCWeb
2. **Ejecutar el contenedor:**
docker run -d -p 8080:80 -p 2222:22 --name landing-page-container duckystripe/landing-page:DCWeb

Con este comando, estás ejecutando el contenedor a partir de la imagen descargada. El puerto 8080 de tu máquina host está mapeado al puerto 80 del contenedor (para acceder a la Landing Page), y el puerto 2222 de tu máquina host está mapeado al puerto 22 del contenedor (para SSH).

3. **Verificar que el contenedor está en ejecución:**

docker ps

Deberías ver una lista de contenedores en ejecución, y en la columna de "NAMES" deberías ver `landing-page-container`.

4. **Acceder a la Landing Page:**

Abre un navegador web y visita la siguiente dirección:

http://localhost:8080


Esto mostrará la Landing Page de ejemplo dentro del contenedor.

5. **Iniciar sesión mediante SSH:**

Para acceder al contenedor mediante SSH, utiliza el siguiente comando en la línea de comandos:

ssh myappuser@localhost -p 2222

6. **Caso Opcional error ssh**
docker exec -it landing-page-container service ssh status
docker exec -it landing-page-container service ssh start

6. **Caso Opcional colocar contraseña**
docker exec -it landing-page-container passwd myappuser

¡Disfruta de tu Landing Page en el contenedor Docker!
