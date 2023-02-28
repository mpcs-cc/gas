#!/bin/bash

# run_archive_script.sh
#
# Copyright (C) 2015-2023 Vas Vasiliadis
# University of Chicago
#
# Runs the archive utility script
#
##

cd /home/ubuntu/gas/util/archive
source /home/ubuntu/.virtualenvs/mpcs/bin/activate
python /home/ubuntu/gas/util/archive/archive_script.py

### EOF