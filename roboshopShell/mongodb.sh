#!/bin/bash
ROOTVALIDATE(){
uid=$(id -u) 
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

if [ $uid -ne 0 ]
then
   echo "Not Root"
   exit 1
 else
   echo "You are in Root" 
fi
}

SUCESSVALIDATE(){
    if [ $1 -ne 0 ]
    then
       echo -e "$2...$R FAILED $N"
    else 
       echo -e "$2...$G Sucess $N"
    fi
}
ROOTVALIDATE &>> $LOGFILE
SUCESSVALIDATE &>> $LOGFILE
echo "$cat $LOGFILE"