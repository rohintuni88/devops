

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

GITVALIDATION(){
    if [ $? -ne 0 ]
then
   echo "Error $?"
   exit 1
else 
   echo "Git Installation sucessful"
fi
}

MYSQLVALIDATION(){
    if [ $? -ne 0 ]
then
   echo "Error $?"
   exit 1
else 
   echo "Git MySQL sucessful"
fi
}

USERVALIDATION
yum install git -y &>>$LOGFILE
GITVALIDATION
yum install mysql -y &>>$LOGFILE
MYSQLVALIDATION