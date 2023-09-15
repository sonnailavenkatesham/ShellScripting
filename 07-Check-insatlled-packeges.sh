#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
DATE=$(date +%F)
FILE_NAME=/home/centos/ShellScripting/logs
CURRENT_FILE_NAME=$0
LOGFILE=$FILE_NAME/$CURRENT_FILE_NAME-$DATE.log
USER=$(id -u)
if [ $USER -ne 0 ]
then    
    echo -e "$R ERROR: You are not root user $N"
    exit 1
fi

VALIDATE(){
if [ $? -ne 0 ]
then
    echo -e "$R Installation..$2..FAILDED $N"
    exit 1
else
    echo -e "$G Installation..$2..SUCCESSFUL $N"
fi
}

for i in $@
do 
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo "Installing $i Please wait..."
        yum install $i -y &>>$LOGFILE
        VALIDATE $@ "$i"
    else 
        echo -e "$Y $i Already Installed.. $N"
    fi
done



