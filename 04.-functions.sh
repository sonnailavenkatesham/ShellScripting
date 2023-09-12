    #!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then   
    sudo yum install git -y
else
    echo "You are not root user/ Root user can do this"
    exit1
    
fi
