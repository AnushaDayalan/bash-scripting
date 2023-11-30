
USER_ID=$(id -u)

if [ $USER_ID = 0 ] ; then

echo -e -n "\e[31m DO not install MONGODB \e[0m"

else
echo -e -n "\e[33m MONGODB INSTALLED SUCCESSFULLY \e[0m"

fi
exit 1

yum install -y mongodb-org  &>> /tmp/mongodb .log