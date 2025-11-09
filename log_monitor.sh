#!/bin/bash
# log_monitor.sh - Monitor system logs for critical messages

LOG_FILE="/var/log/syslog"
KEYWORDS="error|fail|critical|warning"
ALERT_FILE="$HOME/log_alerts.txt"

echo "Monitoring logs for critical issues..."
grep -Ei "$KEYWORDS" "$LOG_FILE" > "$ALERT_FILE"

if [ -s "$ALERT_FILE" ]; then
    echo "[ALERT] $(date): Issues found in logs!" >> activity.log
    echo "⚠️  Alerts found! Check $ALERT_FILE for details."
else
    echo "[INFO] $(date): No critical log entries found." >> activity.log
    echo "✅ No critical log entries found."
fi
