#!/bin/bash
DOCKERIMAGE=ghcr.io/ntnguyencse/docker-json-server:0.2
# docker run  -it --rm  -p 30000:3000 -v /home/ubuntu/github/docker-json-server/db.json:/data/db.json $DOCKERIMAGE
docker run --network host -it --rm  -p 3000 -v /home/ubuntu/github/docker-json-server/data/db.json:/data/db.json $DOCKERIMAGE