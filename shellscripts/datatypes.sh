#!bin/bash

NUMBER1=$1
NUMBER2=$2

SUM=$(($NUMBER1+$NUMBER2))
fruits=("Apple" "Guva" "Pomo")
echo "$SUM${fruits[2]}"
echo "${fruits[@]}"