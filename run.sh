#!/bin/sh

docker run --rm -it -v ./src/autumn-properties.json:/app/autumn-properties.json -p 3333:3333 sleemp/los-contactos:latest
