# notify.py
#
# Notify users of job completion
#
# Copyright (C) 2015-2023 Vas Vasiliadis
# University of Chicago
##
__author__ = "Vas Vasiliadis <vas@uchicago.edu>"

import boto3
import time
import os
import sys
import json
from botocore.exceptions import ClientError

# Import utility helpers
sys.path.insert(1, os.path.realpath(os.path.pardir))
import helpers

# Get configuration
from configparser import ConfigParser, ExtendedInterpolation

config = ConfigParser(os.environ, interpolation=ExtendedInterpolation())
config.read("../util_config.ini")
config.read("notify_config.ini")

"""A12
Reads result messages from SQS and sends notification emails.
"""


def handle_results_queue(sqs=None):

    # Read messages from the queue

    # Process messages --> send email to user

    # Delete messages

    pass


def main():

    # Get handles to resources

    # Poll queue for new results and process them
    while True:
        handle_results_queue(sqs=None)


if __name__ == "__main__":
    main()

### EOF
