#!/bin/bash

if [ -z "${1}" ]; then
   version="latest"
else
   version="${1}"
fi

cd app
docker build -t localhost:5000/nodejs_app:${version} .
cd ..
