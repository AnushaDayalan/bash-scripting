#!/bin/bash

UID=$(id -u)

if [ $UID -ne 0 ] ; then

echo -e "\e[33m This script is pritned as non sudo user\e[0m"
echo -e "\e[31m example : \n \t\t \e[0m" sudo bash comp"
exit 1

fi

echo -e "******** \e[35m Configuration FRONTEND \e[0m******"

echo -e "Installing nginx"
yum install nginx -y