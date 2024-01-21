#!bin/bash

uid=$1

if [ $uid != 0 ]
then
   echo "Not Root"
 else
   echo "You are in Root" 
fi