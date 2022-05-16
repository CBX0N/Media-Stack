#!/bin/sh
echo "Creating Basic Paths"
mkdir /media-stack
mkdir /media-stack/conf
mkdir /media-stack/data


echo "Creating Config Paths"
mkdir /media-stack/conf/radarr
mkdir /media-stack/conf/jackett

echo "Creating Media Paths"
mkdir /media-stack/data/downloads/torrents -p
mkdir /media-stack/data/Movies

docker-compose -f docker-compose-lin.yml up --detach 