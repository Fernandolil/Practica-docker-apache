\# Práctica de aula: Docker y Apache



\## Pasos realizados



1\. \*\*Creación de documentación:\*\* Se creó el archivo `Pasos-realizados.md`.

2\. \*\*Descarga de imagen base:\*\* `docker pull debian`

3\. \*\*Despliegue interactivo inicial:\*\* `docker run -d -it --name mi\_debian\_apache -p 8080:80 debian`

4\. \*\*Acceso interactivo:\*\* `docker exec -it mi\_debian\_apache bash`

5\. \*\*Instalación de paquetes:\*\* `apt update \&\& apt install -y apache2 elinks`

6\. \*\*Arranque de servicio:\*\* `service apache2 start`

7\. \*\*Comprobación web:\*\* Acceso desde navegador a `http://localhost:8080`.

8\. \*\*Página personalizada:\*\* Creación de `/var/www/html/fernando.html`.

9\. \*\*Verificación en navegador:\*\* Acceso a `http://localhost:8080/fernando.html`.

10\. \*\*Comprobación CLI:\*\* `elinks http://localhost/fernando.html` desde dentro del contenedor.

11\. \*\*Creación de Dockerfile:\*\* Automatización del proceso en archivo `Dockerfile`.

12\. \*\*Construcción de imagen:\*\* `docker build -t mi-apache-custom .`

13\. \*\*Despliegue desde Dockerfile:\*\* `docker run -d --name contenedor\_dockerfile -p 8081:80 mi-apache-custom`

14\. \*\*Copia de archivos locales:\*\* `docker cp ./notas.txt contenedor\_dockerfile:/var/www/html/`

15\. \*\*Despliegue con Docker Compose:\*\* Creación de `docker-compose.yml` mapeando volumen local y ejecución mediante `docker compose up -d`.

