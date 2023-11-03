stat() {

echo -e "\e[34m Show todays date =$(date +%F)\e[0m"

echo -e "\e[33m Show session_count =$(who | wc -l)\e[0m"

}

hello() {  

    echo  "hi this is anusha dayalan performing coding $1"
    echo "learning daily linux is useful for $2"

}

hello
stat
echo "\eshow uptime $(uptime | awk  -F : '{print $NF}')"

