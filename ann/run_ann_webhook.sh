#!/bin/bash

# run_ann_webhook.sh
#
# Copyright (C) 2011-2022 Vas Vasiliadis
# University of Chicago
#
# Runs the annotator as a web server
#
##

# SSL with uWSGI not usable due to SNS subscription confirmation
# not working for HTTPS endpoints with letsencrypt wildcard certs
# Use plain ol' Flask dev server instead

#SSL_CERT_PATH=/usr/local/src/ssl/ucmpcs.org.crt
#SSL_KEY_PATH=/usr/local/src/ssl/ucmpcs.org.key

#export SOURCE_HOST=0.0.0.0
#export HOST_PORT=4433
export ANN_APP_HOME=/home/ubuntu/gas/ann
cd $ANN_APP_HOME

#/home/ubuntu/.virtualenvs/mpcs/bin/uwsgi \
#  --manage-script-name \
#  --enable-threads \
#  --vacuum \
#  --log-master \
#  --chdir $ANN_APP_HOME \
#  --socket /tmp/ann_app.sock \
#  --mount /ann_app=annotator_webhook:app \
#  --https $SOURCE_HOST:$HOST_PORT,$SSL_CERT_PATH,$SSL_KEY_PATH

cd /home/ubuntu/gas/ann
source /usr/local/bin/virtualenvwrapper.sh
source /home/ubuntu/.virtualenvs/mpcs/bin/activate
python /home/ubuntu/gas/ann/annotator_webhook.py

### EOF