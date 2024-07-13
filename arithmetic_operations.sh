read -p "Enter 1st number " a
read -p "Enter 2nd number " b
read -p "Enter operation " o
if [[ $o == add ]];
then
	echo $((a+b))
elif [[ $o == sub ]];
then
	echo $((a-b))
elif [[ $o == mul ]];
then
	echo $((a*b))
elif [[ $o == div ]];
then
	echo $((a/b))
fi
