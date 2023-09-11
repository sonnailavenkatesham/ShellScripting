#!/bin/bash

NUMBER=$1
if [ $NUMBER -Greterthan 10 ]
then
    echo "$NUMBER is Greterthan 10 "
else
    echo "$NUMBER is Lessthan 10 "
fi