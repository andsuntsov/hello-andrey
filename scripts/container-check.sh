#!/bin/bash

if [ -n "$(docker ps --filter "name=^/$1$" --format '{{.Names}}')" ]; then
  docker ps --filter "name=^/$1$" --format '{{.Status}}'
  docker logs "$1" --tail 5 
else
  echo "Контейнер не запущен"
  exit 1
fi
