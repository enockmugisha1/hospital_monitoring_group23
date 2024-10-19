#this is our group tasks 

Samuel; this is the script used in task 2 archive_log.sh : #!/usr/bin/env bash

# Check if heart_rate_log.txt exists
if [ ! -f heart_rate_log.txt ]; then
    echo "Error: heart_rate_log.txt does not exist."
    exit 1
fi

# Get the current timestamp in the format YYYYMMDD_HHMMSS
timestamp=$(date '+%Y%m%d_%H%M%S')

# Construct the new filename
newarchive_filename="heart_rate_log.txt_$timestamp"

# Rename (archive) the log file
mv heart_rate_log.txt "$newarchive_filename"

# Confirm the operation
echo "Log file archived as $newarchive_filename"
