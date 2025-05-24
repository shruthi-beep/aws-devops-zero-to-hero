#!/bin/bash
set -e

# Stop and remove all running containers (excluding header)
container_ids=$(docker ps -q)

if [ -n "$container_ids" ]; then
  echo "Stopping and removing running containers..."
  docker rm -f $container_ids
else
  echo "No running containers to stop."
fi
