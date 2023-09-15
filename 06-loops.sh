#!/bin/bashn
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"
DATE=$(date +%F)
CURRENT_FILE_NAME=$0
LOGFILE=/tmp/$CURRENT_FILE_NAME-$DATE.log
for i in (1..10)
do 
    echo "$i"
done