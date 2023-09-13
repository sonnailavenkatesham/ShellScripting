#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

packege=$(rpm -q git)
INSTALLATION(){
if [ $packege -ne 0 ]
then
    echo "intalling packeges...."
    yum install mysql -y
    VALIDATE $? "mysql" 
else
    echo -e "$Y Already Installed. $N"
    exit 1
fi
}
VALIDATION(){
if [ $? -ne 0 ]
then
    echo -e "$R Installation..$2..FAILDED $N"
else
    echo -e "$G Installation..$2..SUCCESSFUL $N"
}
