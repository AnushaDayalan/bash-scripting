#!/bin/bash
USER_ID=$(id -u)
COMPONENT=mongodb
LOGFILE="/tmp/$(COMPONENT).log"
REPO="https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo"
ZIP="https://github.com/stans-robot-project/mongodb/archive/main.zip"

stat() { 

    if [ $# -eq 0 ] ; then
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
yum install -y mongodb-org &>> $LOGFILE
stat $?

echo -e "\e[31m Enabling config file\e[0m"
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf
stat $?

echo -e "\e[33m Mongodb RESTARTING $COMPONENT\e[0m"
systemctl enable mongod  ##$(LOGFILE)
systemctl daemon-reload ##$(LOGFILE)
systemctl start mongod  ##$(LOGFILE)
stat $?

echo -e "\e[36m Unziping file $COMPONENT\e[0m"
curl -s -L -o /tmp/mongodb.zip $ZIP
stat $?

echo -n "\e [33m Extracting the $COMPONENT\e[0m"
unzip -o /tmp/mongodb.zip git 

echo -n " Injecting database schema"

cd /tmp/mongodb-main
mongo < catalogue.js  
mongo < users.js     
stat $?