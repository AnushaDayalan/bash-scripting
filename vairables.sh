#!/bin/bash

stat () {

echo -e "\e Print Session_Count=$(who | wc -l)"

echo -e "\e Print date is $(date +%F)"
}

sleep 1

stat

sleep 5
 
stat
# echo -e "\e Print collelge name =$1"
# echo -e "\e Print logo name =$2"
# echo $#
# echo $$
# echo $?
# echo $@
# echo $*