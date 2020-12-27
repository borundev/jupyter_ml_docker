#!/bin/bash
export NB_UID=$(id -u)
export NB_GID=$(id -g)
export NB_USER=$(whoami)
export HOSTNAME=$(hostname)
docker-compose up --build --force-recreate tensorflow_and_pytorch tensorboard
