#!/usr/bin/env bash
COMPOSE=docker-compose
case "$env" in
 prod) COMPOSE=docker-compose ;;
 *) COMPOSE='docker-compose -f docker-compose.yml -f docker-compose-dev.yml' ;;
esac

printf '\n============================================\n'
printf 'Local images:\n'
$COMPOSE images

printf '\n============================================\n'
printf '\nPulling images...\n\n'

$COMPOSE pull

printf '\n============================================\n'
printf '\nLocal images:\n\n'

$COMPOSE images

printf '\n============================================\n'
printf '\nCurrently running containers:\n\n'

docker ps

printf '\n============================================\n'
printf '\nUpdating containers...\n\n'

$COMPOSE up -d --build

printf '\n============================================\n'
printf '\nCurrently running containers:\n\n'

docker ps
