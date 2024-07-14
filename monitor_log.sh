
#!/bin/bash

# Prompt the user to enter the log file path
read -p "Enter the log file path: " log_file

# Check if the log file exists
if [[ -f $log_file ]]; then
    echo "Monitoring log file: $log_file"
    # Use tail command to monitor the log file for new entries
    tail -f "$log_file"
else
    echo "No such log file: $log_file"
fi
