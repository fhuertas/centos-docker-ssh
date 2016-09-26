#!/bin/bash
echo "Put your public key here: "
read key
echo "Your public key is:"
echo ${key}
docker build --tag centos-shh --build-arg KEY="${key}" .
# docker build .

