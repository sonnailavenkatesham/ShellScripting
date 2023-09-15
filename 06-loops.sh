#!/bin/bashn
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
DATE=$(date +%F)
CURRENT_FILE_NAME=$0
LOGFILE=/tmp/$CURRENT_FILE_NAME-$DATE.log
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR: You are not a Root User.. $N"
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
    yum install $i -y
    VALIDATE $?
done