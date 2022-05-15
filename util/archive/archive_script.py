# archive_script.py
#
# Archive free user data
#
# Copyright (C) 2011-2021 Vas Vasiliadis
# University of Chicago
##
__author__ = 'Vas Vasiliadis <vas@uchicago.edu>'

import boto3
import time
import os
import sys
import json
import psycopg2
from botocore.exceptions import ClientError

# Import utility helpers
sys.path.insert(1, os.path.realpath(os.path.pardir))
import helpers

# Get configuration
from configparser import ConfigParser
config = ConfigParser(os.environ)
config.read('archive_script_config.ini')

'''Capstone - Exercise 7
Archive free user results files
'''
def handle_archive_queue(sqs=None):
 
  # Read a message from the queue

  # Process message

  # Delete message  

  pass    

def main():
  # Get handles to resources; and create resources if they don't exist

  # Poll queue for new results and process them
  while True:
    handle_archive_queue(sqs=sqs)

if __name__ == '__main__':  
  main()

### EOF