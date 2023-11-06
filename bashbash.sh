#!bin/bash
echo hi all

ACTION=$1

case $ACTION in

    start)
    
    echo  "Print hi"
;;
  
    stop)
    
    echo "Print go away"
    ;;

esac