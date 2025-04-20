#!/bin/bash
# This is a simple shell script that prints "Hello, World!" to the console.
echo "Hello Malli, you are currently working as devops engineer"
set -x
set -e
set -o pipefail

df -hT
ps -ef
top
find /home/ec2-user -name 76s-shell-script
cat /home/ec2-user/sample.txt|grep -i "malli"
cat /home/ec2-user/sample.txt|awk '{print $1F}'

