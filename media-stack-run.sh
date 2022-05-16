#!/bin/sh

echo "Creating Config Paths"
mkdir /media-stack/conf/radarr -p
mkdir /media-stack/conf/jackett -p

echo "Creating Media Paths"
mkdir /media-stack/data/downloads/torrents -p
mkdir /media-stack/data/Movies -p

docker-compose -f docker-compose-lin.yml up --detach 