    #!/bin/bash
DATE=$(date +%D--%T)
SCRIPT_NAME=$0
LOG_FILE=/tmp/$SCRIPT_NAME-$DATE.log
VALIDATE(){
    if [ $1 -ne 0 ]
then
    echo "$2 Installation....FAILED"
    exit 1
else
    echo "$2 Installation...SUCCESS..."
fi
}
USER=$(id -u)
if [ $USER -ne 0 ]
then   
    echo "You are not root user to install packeges.. "
    exit 1
fi

yum install mysql -y &>>$LOG_FILE
VALIDATE $? "mysql"
yum install git -y &>>$LOG_FILE
VALIDATE $? "git" &>>$LOG_FILE
VALIDATE $? "postfix" &>>$LOG_FILE


