# ann_config.py
#
# Copyright (C) 2011-2022 Vas Vasiliadis
# University of Chicago
#
# Set GAS annotator configuration options
#
##
__author__ = 'Vas Vasiliadis <vas@uchicago.edu>'

class Config(object):

  CSRF_ENABLED = True

  ANNOTATOR_BASE_DIR = "/home/ubuntu/gas/ann/"
  ANNOTATOR_JOBS_DIR = "/home/ubuntu/gas/ann/jobs"

  AWS_REGION_NAME = "us-east-1"

  # AWS S3 upload parameters
  AWS_S3_INPUTS_BUCKET = "gas-inputs"
  AWS_S3_RESULTS_BUCKET = "gas-results"

  # AWS SNS topics

  # AWS SQS queues
  AWS_SQS_WAIT_TIME = 20
  AWS_SQS_MAX_MESSAGES = 10

  # AWS DynamoDB
  AWS_DYNAMODB_ANNOTATIONS_TABLE = "<CNetID>_annotations"

### EOF