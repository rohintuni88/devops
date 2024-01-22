#!/bin/bash

for i in {1..5}
do
  echo "$i"
done 

#Install packages using loops like git, mysql, gcc, postfix, nettools

USERVALIDATION(){
uid=$(id -u) 
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
  USERVALIDATION &>> $LOGFILE
  echo "All Args passed: $@"
  for package in $@
  do
     yum list installed $package &>> $LOGFILE  # check installed or not
     if [ $? -ne 0 ]
     then
         yum install $package -y &>>  $LOGFILE  # Install packages
     else
         echo "$package is already installed
      fi
  done


 

