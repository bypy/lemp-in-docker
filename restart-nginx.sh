#!/bin/bash
docker-compose stop nginx && docker-compose up -d --force-recreate --no-deps nginx
