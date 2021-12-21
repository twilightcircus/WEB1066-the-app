#!/usr/bin/env bash
set -e
echo "Executing deploy.sh"
echo "${DOCKER_PASSWORD}" | docker login --username "${DOCKER_LOGIN}" --password-stdin
docker tag tc420/dojo-shop:latest $DOCKER_LOGIN/dojo-shop:latest
docker push $DOCKER_LOGIN/dojo-shop:latest