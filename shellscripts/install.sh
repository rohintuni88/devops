#!bin/bash

uid=$(id -u) 

if [ $uid -ne 0 ]
then
   echo "Not Root"
   exit 1
 else
   echo "You are in Root" 
fi

echo "Hello World"