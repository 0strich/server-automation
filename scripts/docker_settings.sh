#!/bin/bash

# 최상단 project 폴더 생성
cd / && mkdir project

# apt 업데이트, docker 설치
apt update -y && apt install docker.io -y

# JSOB processer 설치
apt-get install jq -y

# VERSION, DESTINATINO 환경변수 설정
export LATEST_VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/1.29.2 | jq .name -r)
export VERSION=$(curl --silent https://api.github.com/repos/docker/compose/releases/1.29.2 | jq .name -r)
export DESTINATION=/usr/local/bin/docker-compose

# docker-compose 설치
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m) -o $DESTINATION

# DESTINATION 경로 권한 변경
sudo chmod 755 $DESTINATION
