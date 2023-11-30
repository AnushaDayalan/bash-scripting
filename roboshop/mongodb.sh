#!/bin/bash

yum install -y mongodb-org  &>> /tmp/ mongodb .log

if [ $? -eq 0 ] ; then
echo -e "\e Success"

else

echo "\e Fail"

fi

exit 1
