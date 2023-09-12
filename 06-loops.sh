#!/bin/bashn
R="\e[31m"
G="\e[32m"
N="\e[0m"
for i in $@
do
    yum install $i -y
    echo -e "$R Successfully installed...$N $i"
done