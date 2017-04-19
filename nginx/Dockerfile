FROM nginx:latest

RUN mkdir /etc/letsencrypt/

#add crontab file in the cron directory
COPY crontab /var/spool/cron/crontabs/crontab
RUN chmod 0644 /var/spool/cron/crontabs/crontab

VOLUME ["/var/www/"]
VOLUME ["/etc/letsencrypt/"]
VOLUME ["/etc/nginx/conf.d"]

EXPOSE 80 443
