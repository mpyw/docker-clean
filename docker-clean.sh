#!/bin/sh

# Remove all randomly named containers
docker ps -aq --filter 'status=exited' --filter 'name=/[a-z]+_[a-z]+$' | xargs docker rm

# Remove all dangling images, volumes and networks
docker image prune -f
docker volume prune -f
docker network prune -f
