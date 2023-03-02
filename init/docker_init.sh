#!/bin/bash

# install docker, docker-compose, jq
../scripts/docker_settings.sh

# copy doc file
cp ../scripts/doc.sh /bin/doc

# docker nignx proxy clone
pushd /project
git clone https://github.com/0strich/nginx.git
