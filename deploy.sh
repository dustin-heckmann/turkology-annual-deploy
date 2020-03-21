#!/usr/bin/env bash

ENV=${ENV:-prod}
export TA_PORT=${PORT:-80}

COMPOSE=docker-compose
case "$ENV" in
 dev) COMPOSE='docker-compose -f docker-compose.yml -f docker-compose-dev.yml' ;;
 prod) COMPOSE=docker-compose ;;
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


printf '\nStarting index...\n\n'
$COMPOSE up -d ta-index 

printf '\nParsing OCR data...\n\n'
$COMPOSE up ta-parser

printf '\nLoading data into index...\n\n'
$COMPOSE up ta-index-import

printf '\nStarting application...\n\n'
$COMPOSE up -d ta-backend ta-statistics-backend ta-frontend 

printf '\n============================================\n'
printf '\nCurrently running containers:\n\n'

docker ps
