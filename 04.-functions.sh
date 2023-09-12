    #!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then   
    echo "You are not root user.. "
    echo "we are adding root and starting git installation"
    sudo yum install git -y
fi

if [ $? -ne 0 ]
then
    echo "ERROR: Git Installing Failed"
    exit 1
else
    echo " Git Successfully Installed"
fi