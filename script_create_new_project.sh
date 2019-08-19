#!/usr/bin/env bash

DIR=$(pwd)

docker-compose run api rails new . -T -d postgresql

echo "Projeto criado"

docker-compose run api rails webpacker:install



