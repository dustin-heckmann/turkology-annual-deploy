#!/usr/bin/env bash

docker-compose images

echo 'Pulling images...'
docker-compose pull
docker-compose images

docker ps

echo 'Updating containers...'
docker-compose up -d --build

docker ps
