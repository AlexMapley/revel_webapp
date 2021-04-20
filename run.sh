#!/bin/sh

docker build . --tag revel

docker run  --network="host" -p 9000:9000 -ti revel /src/revel_webapp