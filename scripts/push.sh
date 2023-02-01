#!/bin/bash

type=$1
message=$2

function push() {
  npm run $type
  git add .
  git commit -m "$message"
  git push
}

if [ "$1" == "patch" ]; then
  push
elif [ "$1" == "minor" ]; then
  push
elif [ "$1" == "major" ]; then
  push
fi
