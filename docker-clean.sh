#!/bin/sh

# Remove all randomly named containers
docker ps -aq --filter 'status=exited' --filter 'name=/\w+_\w+$' | xargs docker rm

# Remove all dangling images, volumes and networks
docker image prune -f
docker volume prune -f
docker network prune -f
