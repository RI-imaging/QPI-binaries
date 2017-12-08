#!/bin/bash
set -e
# Working directory
WDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# Use the same docker image that is used to build
# manylinux1 Python wheels
DOCKER_IMAGE=quay.io/pypa/manylinux1_x86_64
# The docker command is provided by
# the "docker.io" package
docker pull $DOCKER_IMAGE
# run the docker image
# - mounting the parent working directory on /io
# - and executing build.sh
docker run --rm -v ${WDIR}/..:/io $DOCKER_IMAGE $PRE_CMD /io/build_linux/build.sh

