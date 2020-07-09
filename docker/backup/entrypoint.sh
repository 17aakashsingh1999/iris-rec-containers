#!/bin/bash
echo $db_user > /home/db_user
echo $db_password > /home/db_password
echo $db_host > /home/db_host
cron
exec "$@"