FROM ubuntu
RUN apt update -y && apt install apache2 -y
RUN rm /var/www/html/index.html
COPY index.html var/www/html
ENTRYPOINT apache2ctl -DFOREGROUND
