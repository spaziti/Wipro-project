# Wipro-project

# System Maintenance Suite (Bash Scripts)

This project provides a set of Linux system maintenance scripts for performing:
- Backups
- System upgrade & cleanup
- Log monitoring
- Menu-driven automated maintenance

All actions are logged for record-keeping and troubleshooting.

---

## Included Scripts

| Script | Description |
|--------|-------------|
| **backup.sh** | Creates a compressed backup of the user's `Documents` directory and stores it in `~/Backups`. |
| **update_cleanup.sh** | Updates system packages and removes unused dependencies to free disk space. |
| **log_monitor.sh** | Scans system logs for errors, warnings, and critical events and logs alerts. |
| **maintenance_suite.sh** | Provides an interactive menu interface to run any of the above tasks. |

System actions are logged in:
- `activity.log` — Successful operations
- `error.log` — Errors or failed operations

---

## Requirements

- Linux or WSL Ubuntu environment
- `bash` shell
- `tar`, `grep`, and `apt` available on system
- `sudo` access for system updates

---

## Setup

1. Place all script files in the same directory:
  backup.sh
  update_cleanup.sh
  log_monitor.sh
  maintenance_suite.sh


2. Make all scripts executable:
   ```bash
    chmod +x backup.sh update_cleanup.sh log_monitor.sh maintenance_suite.sh

 

Script Details
1. backup.sh

Backs up:

/home/<username>/Documents


Stores backups in:

/home/<username>/Backups


File format:

backup_YYYY-MM-DD_HH-MM-SS.tar.gz

2. update_cleanup.sh

Runs:

sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y && sudo apt autoclean -y

3. log_monitor.sh

Scans /var/log/syslog for:

error, fail, critical, warning


Alerts saved to:

~/log_alerts.txt
