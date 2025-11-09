#!/bin/bash
# backup.sh - System Backup Script

BACKUP_SRC="/home/$USER/Documents"
BACKUP_DEST="/home/$USER/Backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_FILE="$BACKUP_DEST/backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DEST"
tar -czf "$BACKUP_FILE" "$BACKUP_SRC"

if [ $? -ne 0 ]; then
    echo "[ERROR] $(date): Backup failed!" >> error.log
else
    echo "[INFO] $(date): Backup completed successfully at $BACKUP_FILE" >> activity.log
    echo "Backup completed successfully at $BACKUP_FILE"
fi
