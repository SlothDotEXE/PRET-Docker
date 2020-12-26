# PRET-Docker
PRET inside of a Python 2.7 environment.

This image provides a functional Python 2.7 environment and PRET (Printer Exploitation Toolkit) clone within a Debian base.

* The PRET folder can be found in `/home/user/PRET`
* PIP has additional installs of `colorama pysnmp`
* Additional apt installation of `imagemagick ghostscript`

PRET documentation [can be found here](https://github.com/RUB-NDS/PRET).

Original image taken from [codenvy/python27](https://hub.docker.com/r/codenvy/python27). 


# Usage 

## Docker Pull (Easiest)
1. Pull the image via `docker pull slothdotexe/pret-docker` 
1. Simply run and enter into the machine via `docker run -it slothdotexe/pret-docker /bin/bash`


## Build from Dockerfile (Manual)
1. Clone from Repo `git clone https://github.com/SlothDotEXE/PRET-Docker`
1. Build the image `docker build -t pret-docker .`
1. Find the ran image in `docker ps -a`, and tag it with `<docker tag IMAGE_ID> pret-docker`
1. Run the image with `docker run -it pret-docker /bin/bash`
