#!/bin/bash

rm -f /rails-app/tmp/pids/server.pid
rails assets:precompile

if [ $MAIN ]
then
    rake db:migrate 
    while [ $? -ne 0 ]
    do
        sleep 3
        rake db:migrate
    done
fi

exec "$@"