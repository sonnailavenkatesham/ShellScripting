#!/bin/bashn
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
DATE=$(date +%F)
CURRENT_FILE_NAME=$0
LOGFILE=/tmp/$CURRENT_FILE_NAME-$DATE.log
ERROR_LOGFILE=/tmp/$CURRENT_FILE_NAME_ERROR-$DATE.log
VALIDATE(){
if [ $? -ne 0 ]
then
    echo -e "$R Installation..$i..FAIDED $N"
    exit 1
else
    echo -e "$G Installation..$i..SUCCESS $N"
fi
}

for i in $@
do
    yum install $i -y &>>$LOGFILE 2>>$ERROR_LOGFILE
    VALIDATE $? $i
done