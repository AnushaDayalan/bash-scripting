
systemctl enable mongod  ##$(LOGFILE)
systemctl daemon-reload mongod ##$(LOGFILE)
systemctl start mongod   ##$(LOGFILE)
##stat $?