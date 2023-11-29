#!/bin/bash

UID=$(id -u)

if [ $UID -ne 0 ] ; then

echo -e "\e [33m This script is pritned as non sudo user\e[0m"
exit 1

fi
echo -e "******** \e[35m Configuration FRONTEND \e[0m******"

echo -e "Installing nginx :"
yum install nginx -y
# systemctl enable nginx 
# systemctl start nginx 

# curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

# cd /usr/share/nginx/html
# rm -rf * 
# unzip /tmp/frontend.zip
# mv frontend-main/* .
# mv static/* .
# rm -rf frontend-master README.md
# mv localhost.conf /etc/nginx/default.d/roboshop.conf