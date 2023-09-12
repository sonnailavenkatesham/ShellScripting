    #!/bin/bash
USER=$(id -u)
SCRIPT_NAME=$0   
DATE=$(date +%F)
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
R="\e[31m"
G="\e[32m"
N="\e[0m]"

VALIDATE(){
if [ $1 -ne 0 ]
then
    echo -e "$2 Installation....$R FAILED.. $N"
    exit 1
else
    echo -e "$2 Installation...$R SUCCESS...$N"
fi
}

if [ $USER -ne 0 ]
then   
    echo "You are not root user to install packeges.. "
    exit 1
fi

yum install mysql -y &>>$LOGFILE 
VALIDATE $? "mysql"
yum install git -y &>>$LOGFILE
VALIDATE $? "git"
yum install postfix -y &>>$LOGFILE
VALIDATE $? "postfix" 


