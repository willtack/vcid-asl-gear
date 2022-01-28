#!/bin/bash
# After merging master
IMAGENAME=$(cat manifest.json | grep \"image\": | sed 's/^.*"image": "\(.*\)".*/\1/')
docker build -t "${IMAGENAME}" .
fw gear upload
docker push "${IMAGENAME}"
