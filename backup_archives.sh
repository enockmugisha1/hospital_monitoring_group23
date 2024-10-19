#!/usr/bin/env bash

# Information for connecting to a remote server for backup
user_info="3ae059f69074"
host="3ae059f69074.079e7915.alu-cod.online"

# Sets the name of the archive directory.
arch_dir="archived_logs_group23"

if [ ! -d "$arch_dir" ]; then
    mkdir "$arch_dir"
else
    echo "The directory already exist"
fi

# Checks if the archive directory exists. If not, it creates it.
for each_file in heart_rate_log.txt_*; do
    if [ ! -f "$each_file" ]; then
        echo "all is backed up!"
    else
        mv "$each_file" "$arch_dir"
    fi
done

# Securely copy the directory to the remote server for backup
scp -r "$arch_dir" "$user_info"@"$host":/home/

# Check if the previous command (SCP) was successful
if [ $? -eq 0 ]; then
    echo "It's a successful script"
else
    echo "fix your code something is wrong somewhere"
fi
