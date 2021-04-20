#!/bin/sh

docker build . --tag revel_webapp

docker run -p 9000:9000 -p 9001:9001 -ti revel_webapp