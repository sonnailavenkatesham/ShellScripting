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
    exit 1
else
    echo "mysql installation Successful.."
fi

yum install postfix -y

if [ $? -ne 0 ]
then
    echo "postfix installation failute.."
    exit 1
else
    echo "postfix installation Successful.."
fi