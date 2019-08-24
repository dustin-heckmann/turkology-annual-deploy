#!/usr/bin/env bash
printf '\n============================================\n'
printf 'Local images:\n'
docker-compose images

printf '\n============================================\n'
printf '\nPulling images...\n\n'

docker-compose pull

printf '\n============================================\n'
printf '\nLocal images:\n\n'

docker-compose images

printf '\n============================================\n'
printf '\nCurrently running containers:\n\n'

docker ps

printf '\n============================================\n'
printf '\nUpdating containers...\n\n'

docker-compose up -d --build

printf '\n============================================\n'
printf '\nCurrently running containers:\n\n'

docker ps
