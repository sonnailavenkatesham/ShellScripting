    #!/bin/bash
USER=4(id -u)
if [ $USER -ne 0 ]
then   
    echo "You are not root user/ Root user can do this"
fi
