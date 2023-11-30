#!/bin/bash

USER_ID=$(id -u)
COMPONENT=mongo
##LOGFILE= "/tmp/$(COMPONENT).log"
REPO="https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo"
stat() { 

    if [ $1 -eq 0 ] ; then
        echo -e "\e success"
    else
        echo -e  "\e fail"
        fi
}


if  [ $USER_ID -ne 0 ]; then

   echo -e " \e need to run as sudo "
   exit 1
fi


echo "****** \e confguring $COMPONENT repo ******"
curl -s -o /etc/yum.repos.d/mongodb.repo $REPO
stat $?

echo -e "\e Installing $COMPONENT"
yum install -y mongodb-org
stat $?





echo -e "\e Installing $COMPONENT"
yum install -y mongodb-org