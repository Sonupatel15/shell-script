#!/bin/bash
# System Information Script

echo "System Information Report"
echo "----------------------------"
echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "System Uptime: $(uptime -p)"
echo "Disk Usage: "
df -h | grep "/dev/disk1s1"

echo "Memory Usage:"
vm_stat

