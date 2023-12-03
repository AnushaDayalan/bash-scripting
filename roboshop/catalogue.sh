#!/bin/bash

USER_ID=$(id -u)
COMPONENT_URL="https://github.com/stans-robot-project/$COMPONENT/archive/main.zip"
##URL="https://rpm.nodesource.com/pub_16.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm"
LOGFILE="/tmp/${COMPONENT}.log"

if 
[ $USER_ID -ne 0 ] ; then
echo -n -e "\e[35m Print as sudo user\e[0m"
exit 1
fi

stat()
{ 
    if [ $1 -eq 0 ]; then

echo -e -n "Success"

else
echo -e -n "Fail"
fi
} 

echo -n "COnf of NODEJS :"
yum install https://rpm.nodesource.com/pub_16.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm -y  |sudo bash -
stat $?

echo -n " Installing NodeJS "
yum install nodejs -y  &>> $LOGFILE
stat $?