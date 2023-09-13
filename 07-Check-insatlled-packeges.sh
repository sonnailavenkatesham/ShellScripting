#!/bin/bash
packege=$(rpm -q git)
INSTALLATION(){
if [ $packege -ne 0 ]
then
    echo "intalling packeges...."
    yum install git -y
else
    echo "Already Installed"
fi
}
VALIDATION(){
if [ $? -ne 0 ]
then
    
}