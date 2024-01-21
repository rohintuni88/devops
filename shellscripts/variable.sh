#!/bin/bash
# --> # shebang --> to check the syntax of our shellscript, we need to give the location of bash
PERSON0="Rohin"
PERSON1="Hi $PERSON0"
PERSON2="Hello $PERSON0"
DATE=$(date)
read PERSON3
read -s PERSON4

echo "$PERSON1$PERSON2${DATE}$PERSON3$PERSON4"   # to print 