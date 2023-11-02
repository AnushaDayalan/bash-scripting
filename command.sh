#!/bin/bash

Date="$(date +%F)"

echo -e "\e[33;44m Today date is $Date \e[0m"

#echo -e "\e[33:43m Print these two colours \e[0m"


Date="\e$(date +%F)"

echo "\ePrint  date is = $Date"

Talented_Guest="\e$(Anusha)"
echo -e "\e Print talented guest = $1\e"
