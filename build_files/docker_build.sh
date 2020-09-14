#!/usr/bin/env bash

# Build docker image with the specified name in docker_image_name.txt file
docker build --tag=$(<./variables/docker_image_name.txt) .
