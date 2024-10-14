#!/bin/bash
read -p "enter the device name (e.g., Monitor_A, Monitor_B): " device_name

# log file where heart rate data will be stored
log_file="heart_rate_log.txt"

# Function to simulate heart rate logging
log_heart_rate() {
    while true; do
        # Generate a random heart rate between 40 and 100
        heart_rate=$((RANDOM % 61 + 40))

        # Get the current timestamp
        timestamp=$(date +"%Y-%m-%d %H:%M:%S")

        # Log the data in the format: Timestamp Device_name Heart_rate
        echo "$timestamp $device_name $heart_rate" >> "$log_file"

        # Wait for 1 second before logging the next data point
        sleep 1
    done
}

# Run the log_heart_rate function in the background
log_heart_rate &

# Get the process ID of the background process
pid=$!

# Display the process ID for management
echo "Heart rate logging started with PID: $pid"
