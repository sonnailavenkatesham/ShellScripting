#!/bin/bash
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
USER=$(id -u)
if [ $USER -ne 0 ]
then    
    echo -e "$R ERROR: You are not root user $N"
    exit 1
fi

for i in $@
do 
    yum install $i -y
    VALIDATE @? "$i"
done


VALIDATION()
{
if [ $? -ne 0 ]
then
    echo -e "$R Installation..$2..FAILDED $N"
else
    echo -e "$G Installation..$2..SUCCESSFUL $N"
}
