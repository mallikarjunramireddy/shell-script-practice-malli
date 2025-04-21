#!/bin/bash
# This script checks the disk space usage of the system and sends an alert if it exceeds a certain threshold.
# It also provides a summary of the disk space usage.
DISK_USAGE=$(df -hT | grep -vE '^Filesystem|tmpfs|cdrom')
DISK_TRESHHOLD=10
message=""

while IFS= read -r line
do 
    usage=$(echo $line | awk '{print $6}' | cut -d% -f1)
    partition=$(echo $line | awk '{print $1}')
    if [ "$usage" -ge "$DISK_TRESHHOLD" ]
    then
        message+="High Disk Usage on $partition: $usage% <br>"
    fi

done <<< "$DISK_USAGE"

echo -e "Message: $message"
