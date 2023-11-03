stat() {

echo -e "\e [34m;41 Show todays date =$(date +%F)\e[0m"

echo -e "\e[33m Show session_count =$( who | wc -l)\e[0m"

}

sleep 2

hello() {  

    echo "hi this is anusha dayalan performing coding $1"

}

sleep 6

stat 

hello
stat


