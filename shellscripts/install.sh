#!bin/bash

uid=$(id -u) 

if [ $uid -ne 0 ]
then
   echo "Not Root"
 else
   echo "You are in Root" 
fi