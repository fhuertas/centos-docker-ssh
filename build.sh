#!/bin/bash
echo "Put your public key here: "
newkey="nothing"
key=""
read newkey
key=$newkey
while [ "$newkey" != "" ]; do
	read newkey
  key="$key\n$newkey"
done
echo "Your public key is:"
echo -e ${key}
docker build --tag centos-shh --build-arg KEY="${key}" .
# docker build .

