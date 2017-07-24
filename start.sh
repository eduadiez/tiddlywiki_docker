#!/bin/bash
#sudo docker run --rm --name tiddlywiki --env VIRTUAL_HOST= --env VIRTUAL_PORT=8080 --env VIRTUAL_URL=/wiki -p 8080:8080 -v /home/edu/docker_repo/tiddlywiki_docker/wiki:/usr/src/app/wiki -d eduadiez/tiddlywiki

if [ $# -ne 2 ]; then
    echo "Usage: start.sh WIKI_NAME PORT"
    exit 1
fi

DIR=$1
NAME="tiddlywiki_$DIR"
PORT=$2

mkdir -p $DIR

sudo docker run --rm --name $NAME -p $PORT:8080 -v $DIR:/usr/src/app/wiki -d eduadiez/tiddlywiki
