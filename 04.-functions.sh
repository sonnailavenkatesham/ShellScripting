    #!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then   
    echo "You are not root user/ Root user can do this"
    exit1
else
    sudo yum install git -y
fi
