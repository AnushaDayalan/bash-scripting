#!/bin/bash

UID=$(id -u)

if [ $UID -ne 0 ] ; then
echo -e "\e[33m This script is pritned as non sudo user\e[0m"
echo -e "\e example : \n \t\t sudo bash comp"
exit 1

fi

echo -e "******** \e[35m Configuration frontend \e[0m******"
echo  "Installing nginx"
yum install nginx -y  &>> /tmp/frontend .log

if
 [$? -eq 0] ; then
 echo -e "\e[36m Nginx installing successfully \e[0m"
    else
 echo -e "\e[33m Nginx FAILURE \e[0m"
fi