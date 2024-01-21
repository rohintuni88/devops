#!/bin/bash
# --> # shebang --> to check the syntax of our shellscript, we need to give the location of bash
PERSON0="Rohin"
PERSON1="Hi $PERSON0"
PERSON2="Hello $PERSON0"
DATE=$(date)

echo "$PERSON1$PERSON2${DATE}"   # to print 