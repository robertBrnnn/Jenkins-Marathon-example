#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
   marathon="localhost"
else
   version="${1}"
   marathon=${MARATHON_PORT_8080_TCP_ADDR}
fi

# destroy old application
curl -X DELETE -H "Content-Type: application/json" http://${marathon}:8080/v2/apps/app 

# I know this one is ugly. But it works for now.
sleep 1

# these lines will create a copy of app_marathon.json and update the image version
cp -f deployment.json deployment.json.tmp
sed -i "s/latest/${version}/g" deployment.json.tmp

# post the application to Marathon
curl -X POST -H "Content-Type: application/json" http://${marathon}:8080/v2/apps -d@deployment.json.tmp
