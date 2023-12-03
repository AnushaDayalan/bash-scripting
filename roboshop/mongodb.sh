
#!/bin/bash

USER_ID=$(id -u)
COMPONENT=mongodb
LOGFILE="/tmp/$(COMPONENT).log"

echo -e "\e[36m Unziping file $(COMPONENT)\e[0m"
curl -s -L -o /tmp/mongodb.zip $ZIP
cd /tmp
unzip mongodb.zip  $(LOGFILE)
cd mongodb-main
mongo < catalogue.js  
mongo < users.js     