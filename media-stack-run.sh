#!/bin/sh

echo "Creating Config Paths"
mkdir -p /media-stack/conf/radarr
mkdir -p /media-stack/conf/sonarr
mkdir -p /media-stack/conf/jackett 
mkdir -p /media-stack/conf/qbitorrent 

echo "Creating Media Paths"
mkdir -p /media-stack/data/downloads/torrents 
mkdir -p /media-stack/data/Movies 

docker-compose . up --detach 