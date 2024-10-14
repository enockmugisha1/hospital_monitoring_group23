#!/bin/bash

# Group number
group_number=1  # Replace with your group number

# Directory where archived logs will be stored
archive_dir="archived_logs_group$group_number"

# Remote backup server details
remote_host="sandbox_host"         # Replace with actual host
remote_user="sandbox_user"         # Replace with actual username
remote_dir="/home/$remote_user"    # Remote directory for backup

# Create the archive directory if it doesn't exist
if [ ! -d "$archive_dir" ]; then
    echo "Creating directory $archive_dir for archived logs..."
    mkdir "$archive_dir"
fi

# Move all archived log files to the archive directory
echo "Moving all archived log files to $archive_dir..."
mv heart_rate_log.txt_* "$archive_dir/" 2>/dev/null

# Check if there are any files to back up
if [ "$(ls -A $archive_dir)" ]; then
    echo "Archived log files found. Preparing to back up..."
else
    echo "No archived log files found. Exiting script."
    exit 1
fi

# Back up the archived logs to the remote server using scp
echo "Backing up archived logs to the remote server at $remote_host..."
scp -r "$archive_dir" "$remote_user@$remote_host:$remote_dir"

# Check if backup was successful
if [ $? -eq 0 ]; then
    echo "Backup completed successfully!"
else
    echo "Backup failed. Please check the connection details and try again."
fi
