#!/bin/bash
# This is a simple shell script that prints "Hello, World!" to the console.
echo "Hello Malli, you are currently working as devops engineer"
set -x
set -e
set -o pipefail

df -hT

ps -ef |grep ec2-user

find /home/ec2-user -name 76s-shell-script

cat /home/ec2-user/sample.txt|grep -i "preparation"

cat /home/ec2-user/sample.txt|awk '{print $2F}'

df -hT|grep -vE "temp|File"|awk '{print $6F}'|cut -d % -f1


