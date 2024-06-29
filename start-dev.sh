#!/bin/bash


# Create SSH Keys
# if [ ! -f ./docker/nginx/ca/server.crt ] || [ ! -f ./docker/nginx/ca/server.key ]; then
#     openssl req -x509 -newkey rsa:4096 -sha256 -days 3650 \
#         -nodes -keyout ./docker/nginx/ca/server.key -out ./docker/nginx/ca/server.crt -subj "/CN=localhost"
# fi

docker compose -f docker/docker-compose.yml up
