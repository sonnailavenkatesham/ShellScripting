    #!/bin/bash
USER=$(id -u)
SCRIPT_NAME=$0   
DATE=$(date +%D%T)
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log
VALIDATE(){
if [ $1 -ne 0 ]
then
    echo "$2 Installation....FAILED"
    exit 1
else
    echo "$2 Installation...SUCCESS..."
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


