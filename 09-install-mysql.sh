#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "Please run this script as root user"
   
else
    echo "You are running this script as root user"
fi

yum install mysql -y

if [ $? -eq 0 ]
then
    echo "MySQL Installation..... successfully"
else
    echo "MySQL Installation...... failed"
fi

yum install git -y

if [ $? -eq 0 ]
then
    echo "Git installation.... successfully"
else
    echo "Git installation.... failed"
fi



