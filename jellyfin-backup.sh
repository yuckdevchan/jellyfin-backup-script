#!/bin/bash

echo "Jellyfin Backup Script"

#Directory environment variables:

#DATA=$JELLYFIN_DATA_DIR
#CONFIG=$JELLYFIN_CONFIG_DIR
#CACHE=$JELLYFIN_CACHE_DIR
#WEB=$JELLYFIN_WEB_DIR
#LOGS=$JELLYFIN_LOG_DIR

sudo rm -rf /home/$USER/backup
echo "Deleted old backups"
mkdir /home/$USER/backup
echo "Made new backup folder"
sudo cp $JELLYFIN_DATA_DIR /home/$USER/backup/data
echo "Backed up data directory"
sudo cp $JELLYFIN_CONFIG_DIR /home/$USER/backup/config
echo "Backed up config directory"
sudo cp $JELLYFIN_CACHE_DIR /home/$USER/backup/cache
echo "Backed up cache directory"
sudo cp $JELLYFIN_WEB_DIR /home/$USER/backup/web
echo "Backed up web directory"
sudo cp $JELLYFIN_LOG_DIR /home/$USER/backup/logs
echo "Backed up log directory"
echo "- - -"
echo "Done - Finished copying all Jellyfin data directories."
