#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File')
DISK_THRESHOLD=15
message=""

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High Disk Usage on $partition: $usage"
    fi
done <<< $DISK_USAGE

echo -e "Message: $message"

echo "$message" | mail -s "High Disk Usage" mallikarjunrao.ramireddy@gmail.com

echo "This is a test mail & Date $(date)" | mail -s "message" mallikarjunrao.ramireddy@gmail.com
