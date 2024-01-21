

USERVALIDATION(){
    uid=$(id -u) 


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
echo "Script Name: $0"
yum install git -y
GITVALIDATION
yum install mysql -y
MYSQLVALIDATION