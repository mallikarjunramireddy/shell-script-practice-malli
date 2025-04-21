#!/bin/bash

set -e
# This script deletes log files older than 14 days from a specified directory.
SOURCE_DIR="/tmp/logs"

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"


if [ ! d $SOURCE_DIR ]
then
    echo -e "$R ERROR:: Directory $SOURCE_DIR does not exist $N"
    exit 1
fi

FILEs_TO_DELTE=$(find $SOURCE_DIR -type f -name "*.log" -mtime +14)

while IFS= read -r line
do 
    echo " Deleting file is $line"
    rm -rf $line

done <<< $FILEs_TO_DELTE

