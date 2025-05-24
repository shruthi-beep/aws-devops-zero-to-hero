#!/bin/bash
set -e

# Stop the running container (if any)
container_ID=`docker ps | awk '{print $1}'`
docker -rm -f $container_ID
