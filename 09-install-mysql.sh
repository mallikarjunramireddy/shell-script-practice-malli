#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1
else
    echo "You are running this script as root user"
fi

yum install mariadb -y

if [ $? -eq 0 ]
then
    echo "MARIADB Installation..... successfully"
else
    echo "ERROR: MARIADB Installation...... failed"
    exit 1
fi

yum install git -y

if [ $? -eq 0 ]
then
    echo "Git installation.... successfully"
else
    echo "ERROR: Git installation.... failed"
    exit 1
fi



