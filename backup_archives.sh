#!/usr/bin/env bash

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
