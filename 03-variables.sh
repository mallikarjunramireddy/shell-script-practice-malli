#!/bin/bash

DATE=$(date)
echo "Current date and time is: $DATE"
echo "Current date and time is: ${DATE}"
DISK_SPCE=$(df -hT)
echo "Disk space usage is: $DISK_SPCE"
echo "Disk space usage is: ${DISK_SPCE}"