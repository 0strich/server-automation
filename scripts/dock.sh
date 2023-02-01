#!/bin/bash

function clean() {
  docker system prune -a -f
  docker image prune -a -f
  docker volume prune
}

function up() {
  docker-compose up -d
}

function down() {
  docker-compose down
  clean
  docker images
}

function rebuild() {
  down
  up
}

function run() {
  docker exec -it $2 /bin/sh
}

if [ $1 == "clean" ]; then
  clean
elif [ $1 == "up" ]; then
  up
elif [ $1 == "down" ]; then
  down
elif [ $1 == "rebuild" ]; then
  rebuild
elif [ $1 == "run" ]; then
  run
fi
