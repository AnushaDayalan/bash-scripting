stat() {

echo -e "\e [34m Print todays date =$(date +%F)\e[0m"

echo -e "\e Print session_count =$( who | wc -l)"

}

sleep 2

hello() {  

    echo hi this is anusha 

}

sleep 6

stat 

hello



