# anntools
AnnTools modified for use in MPCS class. The AnnTools package is developed and maintained by Vlad Makarov et al. More information is available on the [AnnTools project home page](http://anntools.sourceforge.net/). AnnTools depends on [PyMySQL](https://github.com/PyMySQL/PyMySQL). This derivative of the original package uses the AWS SecretsManager to get MySQL database connection parameters on demand. This makes it easier to automate testing since there is no need to manually configure these values.

To run AnnTools: `python run.py <path_to_input_data_file>`. The input data file must be a VCF formatted file; sample VCF files are included in the `/data` directory. Make sure you always use fully qualified paths when specifying the input file; relative paths may lead to hard-to-debug errors.

In addition to the AnnTools packge, this directory contains the following GAS-related files:
* `annotator.py` - The annotator running as a script (polling a queue)
* `annotator_config.ini` - Configuration file for the annotator script
* `run_ann.py` - shell script for running the annotator script
* `annotator_webhook.py` - The annotator running as a webhook
* `annotator_webhook_config.py` - Configuration file for the annotator webhook
* `run_webhook_ann.py` - shell script for running the annotator webhook

