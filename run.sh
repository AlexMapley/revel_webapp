#!/bin/sh

docker build . --tag revel_webapp

docker run -p 9000:9000 -p 33655:33655 -ti revel_webapp