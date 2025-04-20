#!/bin/bash

#Author: Malli
#Date: 2023-10-05
#Purpose: This script demonstrates the use of read command in shell scripting.
#Version: 1.0
#Usage: sh 05-variables.sh

echo "Enter your name:"
read -s USERNAME
echo "Enter password:"
read -s PASSWORD
echo "Hello $USERNAME, your password is $PASSWORD"