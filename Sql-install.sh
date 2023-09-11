#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Your are not root user..please chenge it root."
    exit 1
fi
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "mysql installation failute.."
else
    echo "mysql installation Successful.."