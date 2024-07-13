read -p"Enter the file name: " file
if [[ -f ${file}.txt ]];then
	read -p "Enter text to append: " text
	echo $text >> ${file}.txt
else
	echo "The file doesn't exists"
fi
