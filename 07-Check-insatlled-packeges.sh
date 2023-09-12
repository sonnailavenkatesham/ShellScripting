#!/bin/bash
packege=$(rpm -q git)
if [ $packege -ne 0 ]
then
    echo "intalling packeges"
    yum install git -y
else
    echo "Already Installed"
fi