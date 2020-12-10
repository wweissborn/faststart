#!/bin/sh

echo "docker login dummy"
echo "now sleeping for 10"

docker pull wweissborn/patchx:cn320

docker container run --rm -d -p 8888:80 wweissborn/patchx:cn320
