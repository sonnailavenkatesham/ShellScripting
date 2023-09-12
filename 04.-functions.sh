#!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then
    echo "You are not Root User"
fi

yum install git -y