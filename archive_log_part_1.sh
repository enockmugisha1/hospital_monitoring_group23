#!/bin/bash

# Script Name: archive_log_part_1.sh
# Description: Renames the heart rate log file with a timestamp for archiving.

# Define the log file name
LOG_FILE="heart_rate_log.txt"

# Check if the log file exists before proceeding
if [ ! -f "$LOG_FILE" ]; then
    echo "Log file not found: $LOG_FILE"
    exit 1
fi

# Get the current timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Define the new name with the timestamp
NEW_LOG_FILE="${LOG_FILE}_${TIMESTAMP}"

# Rename the log file with the timestamp
mv "$LOG_FILE" "$NEW_LOG_FILE"
echo "Archived log file: $NEW_LOG_FILE"

