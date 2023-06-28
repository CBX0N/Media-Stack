#!/bin/bash
APP="sonarr"
ROOTDIR="/etc/media-stack"
if [ -d "$ROOTDIR" ]; then
    echo "Success: ${ROOTDIR} Directory found."
else
    echo "Warning: ${ROOTDIR} not found. Creating directory"
    mkdir "$ROOTDIR" && echo "Directory created"
fi

check_path () {
    local rootpath="$ROOTDIR"
    path=$rootpath/$folder
    if [ -d "$path" ]; then
        echo "Success: ${path} Directory found."
    else
        echo "Warning: ${path} not found. Creating directory"
        mkdir "$path" && echo "Directory created"
    fi
}

for i in $APP "$APP/config" "$APP/tv" "$APP/downloads" 
do
    folder=$i
    check_path
done