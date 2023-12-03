#!/bin/bash

USER_ID=$(id -u)
COMPONENT=catalogue
##URL="https://rpm.nodesource.com/pub_16.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm"
LOGFILE="/tmp/$(COMPONENT).log"

if 
[ $USER_ID -ne 0 ] ; then
echo -n "\e[35m Print as sudo user\e[0m"
exit 1
fi

stat()
{ 
    if [ $1 -eq 0 ]; then

echo -e -n "\e [33m Success\e[0m"

else
echo -e -n "\e [34m Fail\e[0m"
fi
} 

echo -n "COnf of NODEJS for $COMPONENT: "
curl --silent --location  install https://rpm.nodesource.com/pub_16.x  |sudo bash -
stat $?

echo -n " Installing NodeJS "
yum install nodejs -y  &>> $LOGFILE
stat $?