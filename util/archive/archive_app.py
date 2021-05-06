# archive_app.py
#
# Archive free user data
#
# Copyright (C) 2011-2021 Vas Vasiliadis
# University of Chicago
##
__author__ = 'Vas Vasiliadis <vas@uchicago.edu>'

import json
import os

from flask import Flask

app = Flask(__name__)
environment = 'archive_app_config.Config'
app.config.from_object(environment)
app.url_map.strict_slashes = False

@app.route('/', methods=['GET'])
def home():
  return (f"This is the Archive utility: POST requests to /archive.")

@app.route('/archive', methods=['POST'])
def archive_free_user_data():
  pass

### EOF