#!bin/bash

uid=$(id -u) 

if [ $uid -ne 0 ]
   echo "Not Root"
   exit 1

yum install git -y
if [ $? -ne 0 ]
then
   echo "Error Installation Failed $?"
   exit 1
else 
   echo "Git Installation sucessful"
fi

