#!/bin/sh

docker build . --tag revel

docker run  --network="host" -p 8080:8080 -ti revel