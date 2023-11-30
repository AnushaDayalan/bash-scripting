#!/bin/bash

USER_ID=$(id -u)
COMPONENT=mongo
LOGFILE="/tmp/$(COMPONENT).log"
REPO="https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo"
stat() { 

    if [ $1 -eq 0 ] ; then
        echo -e "\e[33m Success\e[0m"
    else
        echo -e  "\e[35m fail \e[0m"
        fi
}


if  [ $USER_ID -ne 0 ]; then

   echo -e "\e[31m need to run as sudo\e[0m"
   exit 1
fi


echo -e "******\e[32m confguring $COMPONENT repo ******\e[0m"
curl -s -o /etc/yum.repos.d/mongodb.repo $REPO
stat $?

echo -e "\e[34m Installing $COMPONENT\e[0m"
yum install -y mongodb-org &>> /tmp/$(COMPONENT) .log
stat $?





echo -e "\e Installing $COMPONENT"
##yum install -y mongodb-org

echo -n "\e [31m Enabling config file\e[0m"
sed -i -e 's/127.0.0.1/0.0.0.0/' mongod.conf
stat $?

echo -e "\e[33m Mongodb RESTARTING\e[0m"
systemctl enable mongod  &>>/tmp/mongodb .log
systemctl daemon-reload mongod  &>>/tmp/mongodb .log
systemctl start mongod   &>>/tmp/mongodb .log
stat $?