#!bin/bash

uid=$(id -u) 

if [ $uid -ne 0 ]
then
   echo "Not Root"
   exit 1
 else
   echo "You are in Root" 
   yum install gittt -y
fi

if [ $? -ne 0 ]
then
   echo "Error"
   exit 1
else 
   echo "Git Installation sucessful"
fi

echo "Hello World"