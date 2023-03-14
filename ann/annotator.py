# annotator.py
#
# NOTE: This file lives on the AnnTools instance
#
# Copyright (C) 2013-2023 Vas Vasiliadis
# University of Chicago
##
__author__ = "Vas Vasiliadis <vas@uchicago.edu>"

import boto3
import time
import os
import sys
import json
from subprocess import Popen, PIPE
from botocore.exceptions import ClientError

base_dir = os.path.abspath(os.path.dirname(__file__))

# Get configuration
from configparser import ConfigParser, ExtendedInterpolation

config = ConfigParser(os.environ, interpolation=ExtendedInterpolation())
config.read("annotator_config.ini")


"""Reads request messages from SQS and runs AnnTools as a subprocess.

Move existing annotator code here
"""


def handle_requests_queue(sqs=None):

    # Read messages from the queue

    # Process messages

    # Delete messages

    pass


def main():

    # Get handles to resources

    # Poll queue for new results and process them
    while True:
        handle_archive_queue(sqs=None)


if __name__ == "__main__":
    main()

### EOF
