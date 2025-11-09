#!/bin/bash
# maintenance_suite.sh - System Maintenance Menu

while true; do
    clear
    echo "=== System Maintenance Suite ==="
    echo "1. Run Backup"
    echo "2. Run System Update & Cleanup"
    echo "3. Run Log Monitor"
    echo "4. Exit"
    read -p "Choose an option [1-4]: " choice

    case $choice in
        1) ./backup.sh ;;
        2) ./update_cleanup.sh ;;
        3) ./log_monitor.sh ;;
        4) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid option. Try again." ;;
    esac
    read -p "Press Enter to continue..."
done
