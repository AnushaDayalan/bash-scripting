#!/bin/bash

yum install -y mongodb-org  

if [ $? -eq 1 ] ; then
echo -e "\e Success"

else

echo "\e Fail"

fi

exit 1
