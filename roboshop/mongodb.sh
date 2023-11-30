#!/bin/bash

USER_ID=$(id -u)
COMPONENT=mongo
LOGFILE="/tmp/$(COMPONENT).log"
REPO="https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo"
stat() { 

    if [ $1 -eq 0 ] ; then
        echo -e "\e[33m Success\e[0m"
    else
        echo -e  "\e fail"
        fi
}


if  [ $USER_ID -ne 0 ]; then

   echo -e "\e[31m need to run as sudo\e[0m"
   exit 1
fi


echo "****** \e[32m confguring $COMPONENT repo ******\e[0m"
curl -s -o /etc/yum.repos.d/mongodb.repo $REPO
stat $?

echo -e "\e[34m Installing $COMPONENT\e[0m"
yum install -y mongodb-org &>> ${LOGFILE}
stat $?





echo -e "\e Installing $COMPONENT"
yum install -y mongodb-org