#!/bin/bashn
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
VALIDATE(){
if [ $? -ne 0 ]
then
    echo -e "$R Installation....FAIDED $N"
else
    echo -e "$G Installation....SUCCESS $N"
fi
}

for i in $@
do
    yum install $i -y
    VALIDATE $? $id
done