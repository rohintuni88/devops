#!bin/bash

uid=$(id -u) 

if [ $uid -ne 0 ]
then
   echo "Not Root"
   exit 1
 else
   echo "You are in Root" 
fi

yum install git -y
if [ $? -ne 0 ]
then
   echo "Error $?"
   exit 1
else 
   echo "Git Installation sucessful"
fi

yum install mysql -y
if [ $? -ne 0 ]
then
   echo "Error $?"
   exit 1
else 
   echo "Git MySQL sucessful"
fi
