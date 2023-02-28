#!/bin/bash

# run_thaw_app.sh
#
# Copyright (C) 2015-2023 Vas Vasiliadis
# University of Chicago
#
# Runs the Glacier thawing utility Flask app
#
##

export THAW_APP_HOME=/home/ubuntu/gas/util/thaw
export SOURCE_HOST=0.0.0.0
export HOST_PORT=5001

cd $THAW_APP_HOME

/home/ubuntu/.virtualenvs/mpcs/bin/uwsgi \
  --manage-script-name \
  --enable-threads \
  --vacuum \
  --log-master \
  --chdir $THAW_APP_HOME \
  --socket /tmp/thaw_app.sock \
  --mount /thaw_app=thaw_app:app \
  --http $SOURCE_HOST:$HOST_PORT

### EOF