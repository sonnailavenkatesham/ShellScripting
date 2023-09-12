    #!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then   
    echo "You are not root user.. we are adding root and starting git installation"
    sudo yum install git -y
    exit 1
fi

if [$? -ne 0 ]
then
    echo "ERROR: Git Installing Failed"
    exit 1
else
    echo " Git Successfully Installed"
fi