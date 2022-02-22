# GAS Utilities
This directory contains the following utility-related files:
* `helpers.py` - Miscellaneous helper functions
* `util_config.py` - Common configuration options for all utilities

Each utility must be in its own sub-directory, along with its respective configuration file and run script, as follows:

/archive (for A14)
* `archive_scipt.py` - Archives free user result files to Glacier using a script
* `archive_script_config.ini` - Configuration options for archive utility script
* `run_archive_scipt.sh` - Runs the archive script

* `archive_app.py` - Archives free user result files to Glacier using a Flask app
* `archive_app_config.py` - Configuration options for archive utility Flask app
* `run_archive_app.sh` - Runs the archive Flask app

/notify (for A12)
* `notify.py` - Sends notification email on completion of annotation job
* `notify_config.ini` - Configuration options for notification utility

/restore  (for A16)
* `restore.py` - AWS Lambda code for restoring thawed objects to S3

/thaw  (for A16)
* `thaw_script.py` - Thaws an archived Glacier object using a script
* `thaw_script_config.ini` - Configuration options for thaw utility script
* `run_thaw_scipt.sh` - Runs the thaw script

* `thaw_app.py` - Thaws an archived Glacier object using a Flask app
* `thaw_app_config.py` - Configuration options for thaw utility Flask app
* `run_thaw_app.sh` - Runs the thaw Flask app

If you completed A20, include your annotator load testing script here
* `ann_load.py` - Annotator load testing script
