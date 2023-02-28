# thaw_script.py
#
# Thaws upgraded (premium) user data
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

# Get configuration
from configparser import ConfigParser

config = ConfigParser(os.environ)
config.read("thaw_script_config.ini")

"""A16
Initiate thawing of archived objects from Glacier
"""


def handle_thaw_queue(sqs=None):

    # Read messages from the queue

    # Process messages

    # Delete messages

    pass


def main():

    # Get handles to resources

    # Poll queue for new results and process them
    while True:
        handle_thaw_queue(sqs=None)


if __name__ == "__main__":
    main()

### EOF
