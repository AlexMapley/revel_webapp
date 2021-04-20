#!/bin/sh

docker build . --tag revel_webapp

docker run -p 9000:9000 -ti revel_webapp