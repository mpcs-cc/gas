#!/bin/bash

# run_archive_app.sh
#
# Copyright (C) 2015-2023 Vas Vasiliadis
# University of Chicago
#
# Runs the archive utility as a web server
#
##

export ARCHIVE_APP_HOME=/home/ubuntu/gas/util/archive
export SOURCE_HOST=0.0.0.0
export HOST_PORT=5000

cd $ARCHIVE_APP_HOME

/home/ubuntu/.virtualenvs/mpcs/bin/uwsgi \
  --manage-script-name \
  --enable-threads \
  --vacuum \
  --log-master \
  --chdir $ARCHIVE_APP_HOME \
  --socket /tmp/archive_app.sock \
  --mount /archive_app=archive_app:app \
  --http $SOURCE_HOST:$HOST_PORT

### EOF