 #!/bin/bash

read -p "TW_NAME: " TW_NAME
read -p "TW_USER: " TW_USER
read -p "TW_PASSWORD: " TW_PASSWORD
echo $TIDDLYWIKI_NAME

sudo docker build --build-arg TW_NAME=$TW_NAME --build-arg TW_USER=$TW_USER --build-arg TW_PASSWORD=$TW_PASSWORD -t eduadiez/tiddlywiki .
