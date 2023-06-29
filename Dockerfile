FROM ubuntu
RUN apt update -y && apt install apache2 -y
ENTRYPOINT apache2ctl -DFOREGROUND
RUN rm -rf /var/www/html/index.html
COPY index.html /var/www/html
EXPOSE 80
