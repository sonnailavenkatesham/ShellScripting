#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "You are not Root User"
    exit 1
fi

yum install git -y