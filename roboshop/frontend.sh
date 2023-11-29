

mv static/* .
rm -rf frontend-master README.md
mv localhost.conf /etc/nginx/default.d/roboshop.conf  &>> /tmp/frontend .log

if [ $? -eq 0 ] ; then
 echo -e "\e[36m SUCCESS \e[0m"
    else
 echo -e "\e[33m  FAILURE \e[0m"
fi

echo -e -n"\e[33m Restarting the nginx $1 \e[0m"

systemctl enable nginx   &>> /tmp/frontend .log
systemctl daemon-reload   &>> /tmp/frontend .log
systemctl restart nginx      &>> /tmp/frontend .log
##systemctl restart nginx    &>> /tmp/frontend .log

if [ $? -eq 0 ] ; then
 echo -e "\e[36m SUCCESS \e[0m"
    else
 echo -e "\e[33m  FAILURE \e[0m"
fi

exit 2