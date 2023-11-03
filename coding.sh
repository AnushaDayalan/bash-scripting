stat() {

echo -e "\e[34m;41 Show todays date =$(date +%F)\e[0m"

echo -e "\e[33m Show session_count =$(who | wc -l)\e[0m"

}

hello() {  

echo $1
    echo -e "hi this is anusha dayalan performing coding $2"

}

stat 

hello

stat