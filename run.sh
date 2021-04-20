#!/bin/sh

docker build . --tag revel_webapp

docker run  --network="host" -p 9000:9000 -ti revel_webapp