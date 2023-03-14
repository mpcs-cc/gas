#!/bin/bash

# run_gas.sh
#
# Copyright (C) 2015-2023 Vas Vasiliadis
# University of Chicago
#
# Runs the GAS app using a production-grade WSGI server (uwsgi)
#
##

export ANNOTATOR_WEBHOOK_HOME=/home/ubuntu/gas/ann
export SOURCE_HOST=0.0.0.0
export HOST_PORT=4433

cd $ANNOTATOR_WEBHOOK_HOME

/home/ubuntu/.virtualenvs/mpcs/bin/uwsgi \
  --chdir $ANNOTATOR_WEBHOOK_HOME \
  --enable-threads \
  --http $SOURCE_HOST:$HOST_PORT \
  --log-master \
  --manage-script-name \
  --mount /annotator_webhook=annotator_webhook:app \
  --socket /tmp/annotator_webhook.sock \
  --vacuum

### EOF