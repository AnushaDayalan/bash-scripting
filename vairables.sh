Session_Count=$(who | wc -l)

echo -e "\e Print the sessioncounts as =$Session_Count"

echo -e "\e Print collelge name =$1"
echo -e "\e Print logo name =$2"
echo $#
echo $$
echo $?
echo $@
echo $$