#!/bin/bash
EXTERNAL_PORT=49160
INTERNAL_PORT=8080
IMAGE_NAME='bshef/centos-node-hello'
DOCKER_MACHINE_NAME='default'

function run_docker_machine {
  docker run -p "${EXTERNAL_PORT}":"${INTERNAL_PORT}" -d "${IMAGE_NAME}"
}

function output_docker_processes {
  docker ps
}

function test_app {
  curl $(docker-machine ip "${DOCKER_MACHINE_NAME}"):"${EXTERNAL_PORT}"
}

run_docker_machine && output_docker_processes
