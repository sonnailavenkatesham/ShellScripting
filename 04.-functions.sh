    #!/bin/bash
USER=$(id -u)
if [ $USER -ne 0 ]
then   
    echo "You are not root user to install packeges.. "
    exit 1
fi
VALIDATE(){
    if [ $1 -ne 0 ]
then
    echo "$2 Installation....FAILED"
    exit 1
else
    echo "$2 Installation...SUCCESS..."
fi
}
yum install mysql -y
VALIDATE $? "mysql"
yum install git -y
VALIDATE $? "git"
yum install postfix -y
VALIDATE $? "postfix"


