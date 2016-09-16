#!/bin/bash
# Builds the docker image
IMG_NAME='bshef/centos-node-hello'

docker build -t "${IMG_NAME}" .
