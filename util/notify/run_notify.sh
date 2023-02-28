#!/bin/bash

# run_notify.sh
#
# Copyright (C) 2015-2023 Vas Vasiliadis
# University of Chicago
#
# Runs the notifier utility script
#
##

cd /home/ubuntu/gas/util/notify
source /home/ubuntu/.virtualenvs/mpcs/bin/activate
python /home/ubuntu/gas/util/notify/notify.py

### EOF