#!/bin/bash

# Log file to be archived
log_file="heart_rate_log.txt"

# Check if the log file exists
if [ ! -f "$log_file" ]; then
    echo "Log file $log_file does not exist. Exiting."
    exit 1
fi

# Generate the timestamp for the archive name in the format YYYYMMDD_HHMMSS
timestamp=$(date +"%Y%m%d_%H%M%S")

# Create the archive file name
archive_file="${log_file}_${timestamp}"

# Rename (archive) the log file
mv "$log_file" "$archive_file"

# Confirm the file has been archived
echo "Log file archived as: $archive_file"
