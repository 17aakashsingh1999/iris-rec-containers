FROM ubuntu

COPY backup-sql-cron /etc/cron.d/backup-sql-cron
COPY backup.sh /home/
COPY entrypoint.sh /home/

RUN apt-get update && apt-get -y install cron mysql-client
RUN chmod +x /etc/cron.d/backup-sql-cron
RUN chmod +x /home/backup.sh
RUN chmod +x /home/entrypoint.sh
RUN crontab /etc/cron.d/backup-sql-cron

WORKDIR /home/

ENTRYPOINT ["./entrypoint.sh"]

CMD [ "tail", "-f", "/dev/null" ]