## SSH under centos Dockerfile


This repository contains **Dockerfile** of centos with ssh enabled and with a public key installed to access to the machine 

### Base Docker Image

* [centos:centos7](https://hub.docker.com/_/centos/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Clone respository [git clone git.....]

3. Execute build.sh

4. Enter your public key 


### Usage

To run the docker container, execute the following command:

    docker run -d -p <port>:22 centos-ssh # Where <port> is the port where ssh want to be exposed


