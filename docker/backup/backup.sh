#!/bin/bash
mysqldump --all-databases --host=`cat /home/db_host` --user=`cat /home/db_user` --password=`cat /home/db_password` > "/backup/sqlbackup_`date +%FZ%T`.sql"
