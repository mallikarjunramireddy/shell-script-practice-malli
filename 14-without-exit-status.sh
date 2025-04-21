#!/bin/bash

set -e 

ls -ltr

touch example.txt

echo "Before wrong command"

ls

echo "After wrong command"

cd /tmp

cd /home/ec2-user