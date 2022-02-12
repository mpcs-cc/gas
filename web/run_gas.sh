#!/bin/bash

# run_gas.sh
#
# Copyright (C) 2011-2022 Vas Vasiliadis
# University of Chicago
#
# Runs the GAS app using a production-grade WSGI server (uwsgi)
#
##

SSL_CERT_PATH=/usr/local/src/ssl/ucmpcs.org.crt
SSL_KEY_PATH=/usr/local/src/ssl/ucmpcs.org.key

cd /home/ubuntu/gas

if [ -f "/home/ubuntu/gas/.env" ]; then
  source /home/ubuntu/gas/.env
else
  export GAS_WEB_APP_HOME=/home/ubuntu/gas/web
  export GAS_LOG_FILE_NAME=gas.log
  export GAS_SOURCE_HOST=0.0.0.0
  export GAS_HOST_PORT=4433
  export ACCOUNTS_DATABASE_TABLE=`cat /home/ubuntu/.launch_user`"_accounts"
fi

[[ -d $GAS_WEB_APP_HOME/log ]] || mkdir $GAS_WEB_APP_HOME/log
if [ ! -e $GAS_WEB_APP_HOME/log/$GAS_LOG_FILE_NAME ]; then
  touch $GAS_WEB_APP_HOME/log/$GAS_LOG_FILE_NAME;
fi

LOG_TARGET=$GAS_WEB_APP_HOME/log/$GAS_LOG_FILE_NAME

if [ "$1" = "console" ]; then
  /home/ubuntu/.virtualenvs/mpcs/bin/uwsgi \
    --manage-script-name \
    --enable-threads \
    --vacuum \
    --log-master \
    --chdir $GAS_WEB_APP_HOME \
    --socket /tmp/gas.sock \
    --mount /gas=app:app \
    --https $GAS_SOURCE_HOST:$GAS_HOST_PORT,$SSL_CERT_PATH,$SSL_KEY_PATH
else
  /home/ubuntu/.virtualenvs/mpcs/bin/uwsgi \
    --master \
    --manage-script-name \
    --enable-threads \
    --vacuum \
    --log-master \
    --chdir $GAS_WEB_APP_HOME \
    --socket /tmp/gas.sock \
    --mount /gas=app:app \
    --https $GAS_SOURCE_HOST:$GAS_HOST_PORT,$SSL_CERT_PATH,$SSL_KEY_PATH \
    --logger file:logfile=$LOG_TARGET,maxsize=500000
fi
### EOF