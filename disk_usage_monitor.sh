#!/bin/bash
# Disk Usage Monitoring Script

THRESHOLD=80  # Set disk usage alert threshold (percentage)

# Get the disk usage percentage of the root partition
USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current disk usage: $USAGE%"

# Check if usage exceeds threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage has exceeded $THRESHOLD%!"
else
    echo "Disk usage is within safe limits."
fi

