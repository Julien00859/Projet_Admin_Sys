FROM nginx:latest

COPY ./nginx.conf /etc/nginx/nginx.conf
ADD ./www /var/www/woody

VOLUME ["/var/www/woody"]

EXPOSE 80 443
