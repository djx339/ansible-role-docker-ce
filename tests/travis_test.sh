#!/usr/bin/env bash

set -e

export container_id=$(date +%s)
export cleanup=false
export skip_rerun=true

old_version=17.03.0
playbook_opts="-e docker_version=$old_version"
playbook_opts="playbook_opts" ${PWD}/tests/test.sh

# Ensure docker is installed
docker exec --tty ${container_id} env TERM=xterm which docker

# Ensure specified version is installed
docker_info=$(docker exec --tty ${container_id} env TERM=xterm docker info)
echo $docker_info | grep $old_version

# Install latest docker
playbook_opts="" ${PWD}/tests/test.sh
docker_info=$(docker exec --tty ${container_id} env TERM=xterm docker info)
[[ ! $(echo $docker_info | grep $old_version) ]]
