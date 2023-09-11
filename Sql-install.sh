#!/bin/bash

USERID=$(id -u)
if [ $USERID -ne 0 ]
    echo "Your are not root user..please chenge it root."
    exit 1
fi