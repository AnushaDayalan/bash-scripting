#!/bin/bash

##USER_ID=
COMPONENT=catalogue
URL="https://rpm.nodesource.com/pub_16.x/nodistro/repo/nodesource-release-nodistro-1.noarch.rpm"
LOGFILE="/tmp/$COMPONENT.log"

stat()
{ 
    if [ $# -eq 0 ] then

echo -e -n "\e [33m Success\e[0m"

else
echo -e -n "\e [34m Fail\e[0m"
fi
} 

echo -n "\e[31m Installation of NODEJS for $COMPONENT \e[0m"
yum install nodejs -y &>> $LOGFILE