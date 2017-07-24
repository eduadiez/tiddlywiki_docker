#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: stop.sh WIKI_NAME"
    exit 1
fi

DIR=$1
NAME="tiddlywiki_$DIR"

sudo docker stop $NAME
