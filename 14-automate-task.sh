#!/bin/bash
#Sample Script: Automate a Daily Backup
#wat to do
#we need to create two varaiables to collect the log data and save it

SOURCE_DIR="/home/om/projects"
BACKUP_DIR="/home/om/backups"
DATE=$(date)

#Enusre directory exits
mkdir -p "$SOURCE_DIR"
mkdir -p "$BACKUP_DIR"
echo " Starting backup..."
tar -czf "$BACKUP_DIR/backup-$DATE. tar.gz" "$SOURCE_DIR"
echo " Backup completed for $DATE"
 echo "Back up is saved at the folder : $BACKUP_DIR "