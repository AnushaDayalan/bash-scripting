Session_Count=$(who | wc -l)

echo -e "\e Print the sessioncounts as =$Session_Count"

echo "\e Print collelge name =$1"
echo "\e Print logo name =$2"
echo $#
echo $$
echo $?
echo $@
