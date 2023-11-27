#!/bin/bash
dockerServices=("traefik" "sonarr" "radarr" "lidarr" "jackett" "qBittorrent")
dockerStackPath="/opt/stack-config"
rcloneDrive="docker-backups"
tempBackupPath="/tmp"

for service in "${dockerServices[@]}"
do
  cd $dockerStackPath/$service/ && tar -czf $tempBackupPath/$service.tar.gz .
  cd $tempBackupPath && gpg -e -r gpg@cbxon.co.uk $tempBackupPath/$service.tar.gz
  rm $tempBackupPath/$service.tar.gz
  rclone copy $tempBackupPath/$service.tar.gz.gpg $rcloneDrive:
  rm $tempBackupPath/$service.tar.gz.gpg
  echo "Backed up $service to rclone drive: $rcloneDrive"
done