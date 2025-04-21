#!/bin/bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "Script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE() {
if [ $1 -eq 0 ]
then
    echo -e " $2.....$G successfully $N"
else
    echo -e "ERROR:$2......$R failed $N"
    exit 1
fi
}

if [ $ID -ne 0 ]
then
    echo -e "ERROR:$R Please run this script as root user $N"
    exit 1
else
    echo "You are running this script as root user"
fi

yum install mariadb -y &>> $LOGFILE

VALIDATE $? "MARIADB Installation"


yum install gits -y &>> $LOGFILE

VALIDATE $? "GIT Installation"

