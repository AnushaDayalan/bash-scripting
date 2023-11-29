#!/bin/bash

USER_ID=$(id -u)
Component = $1
if [ $USER_ID -ne 0 ] ; then
echo -e "\e[33m This script is pritned as non sudo user\e[0m"
echo -e "\e example : \n \t\t sudo bash comp"
exit 1

fi

echo -e "******** \e[35m Configuration frontend \e[0m******"
echo  -n "Installing nginx :"
yum install nginx -y  &>> /tmp/frontend .log

if [ $? -eq 0 ] ; then
 echo -e "\e[36m Nginx installing successfully \e[0m"
    else
 echo -e "\e[33m Nginx FAILURE \e[0m"
fi

echo  -n "Downloading the Component = $1:"
curl -s -L -o /tmp/frontend.zip "https://github.com/stans-robot-project/frontend/archive/main.zip"

if [ $? -eq 0 ] ; then
 echo -e "\e[36m COMPONENT SUCCESSFULLY DOWNLOADED \e[0m"
    else
 echo -e "\e[33m Nginx FAILURE \e[0m"
fi


echo "\n Cleaning up the component $1"
cd /usr/share/nginx/html
rm -rf * 

if [ $? -eq 0 ] ; then
 echo -e "\e[36m SUCCESS \e[0m"
    else
 echo -e "\e[33m  FAILURE \e[0m"
fi

echo -e "\n[31m UNZIP the frontend $1\e[0m"
unzip /tmp/frontend.zip

echo -n "\e Configuring $1"

mv frontend-main/* .
mv static/* .
rm -rf frontend-master README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf

if [ $? -eq 0 ] ; then
 echo -e "\e[36m SUCCESS \e[0m"
    else
 echo -e "\e[33m  FAILURE \e[0m"
fi

echo -e "\n[13m Restarting the nginx[0m"

systemctl enable nginx 
systemctl daemon-reload nginx
systemctl re-start nginx 

if [ $? -eq 0 ] ; then
 echo -e "\e[36m SUCCESS \e[0m"
    else
 echo -e "\e[33m  FAILURE \e[0m"
fi