FROM debian:latest

RUN apt update && apt install -y apache2 elinks && apt clean

COPY index.html /var/www/html/
COPY fernando.html /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]