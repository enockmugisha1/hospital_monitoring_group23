#!/bin/bash

# Check if heart_rate_log.txt exists
if [ ! -f "heart_rate_log.txt" ]; then
    echo "Log file heart_rate_log.txt does not exist."
    exit 1
fi

# Get the current timestamp in the format YYYYMMDD_HHMMSS
timestamp=$(date '+%Y%m%d_%H%M%S')

# Create the new archived log file name
archived_log="heart_rate_log.txt_$timestamp"

# Rename (archive) the log file
mv heart_rate_log.txt "$archived_log"

# Print a success message with the new file name
echo "Log file archived as $archived_log"

