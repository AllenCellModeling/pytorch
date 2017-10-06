#!/usr/bin/env bash

# tag the image with the current git branch name
TAG=$(git symbolic-ref --short -q HEAD)

# and put in a repository named after the current user
docker build -t ${USER}/pytorch:${TAG} -f Dockerfile .

