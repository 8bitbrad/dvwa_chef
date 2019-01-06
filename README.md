# dvwa

This cookbook will create a virtual machine image or docker container running the DVWA application.
The CAPTCHA related sections will not be enabled as the cookbook does not
include that specific functionality.

To work with the cookbook and create the virtual machine image you will need:

* virtualbox
* vagrant
* the chefDK
* packer

To create the virtual machine image run:
* packer build vbox.json

To create the docker container on a host with a working docker daemon run:
* packer build docker.json

