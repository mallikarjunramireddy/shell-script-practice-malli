#!/bin/bash

ID=$(id -u)

VALIDATE() {
if [ $1 -eq 0 ]
then
    echo " $2..... successfully"
else
    echo "ERROR:$2...... failed"
    exit 1
fi
}

if [ $ID -ne 0 ]
then
    echo "Please run this script as root user"
    exit 1
else
    echo "You are running this script as root user"
fi

yum install mariadb -y

VALIDATE $? "MARIADB Installation"


yum install git -y

VALIDATE $? "GIT Installation"

