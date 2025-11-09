#!/bin/bash
# update_cleanup.sh - Update and Cleanup Script

echo "Updating system packages..."
sudo apt update && sudo apt upgrade -y

if [ $? -ne 0 ]; then
    echo "[ERROR] $(date): System update failed!" >> error.log
else
    echo "[INFO] $(date): System updated successfully." >> activity.log
fi

echo "Cleaning up unused packages..."
sudo apt autoremove -y && sudo apt autoclean -y

if [ $? -ne 0 ]; then
    echo "[ERROR] $(date): Cleanup failed!" >> error.log
else
    echo "[INFO] $(date): Cleanup completed successfully." >> activity.log
    echo "System update and cleanup completed successfully."
fi
