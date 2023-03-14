# thaw_app_config.py
#
# Copyright (C) 2015-2023 Vas Vasiliadis
# University of Chicago
#
# Set app configuration options for thaw utility
#
##
__author__ = "Vas Vasiliadis <vas@uchicago.edu>"

import os

base_dir = os.path.abspath(os.path.dirname(__file__))


class Config(object):

    CSRF_ENABLED = True

    AWS_REGION_NAME = "us-east-1"

    # AWS DynamoDB table
    AWS_DYNAMODB_ANNOTATIONS_TABLE = "<CNetID>_annotations"


### EOF
