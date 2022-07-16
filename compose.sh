#!/bin/bash

source .env

cp docker-compose-template.yml docker-compose.yml

echo setting webpass to $WEBPASS
sed -i 's/ENV.WEBPASS/'"$WEBPASS"'/g' docker-compose.yml
docker compose up -d
