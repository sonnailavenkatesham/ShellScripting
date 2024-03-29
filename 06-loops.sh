#!/bin/bashn
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
DATE=$(date +%x)
CURRENT_FILE_NAME=$0
LOGFILE=/tmp/$CURRENT_FILE_NAME-$DATE.log
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR: You are not a Root User try sudo and filename.. $N"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$R Installation..$i..FAILED $N"
        exit 1
    else 
        echo -e "$G Installation..$i..SUCCESSFULL $N"
    fi
}
for i in $@
do
    yum list install $i
    if [ $? -ne 0 ]
    then
        yum install $i -y
        VALIDATE $?
    else
        echo -e "$Y Already installed..$i"
    fi
done