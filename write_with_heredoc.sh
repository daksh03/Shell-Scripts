read -p "Enter the file Name: " file
touch $file.txt
cat <<EOF > ${file}.txt
	This is line 1.
	This is line 2.
	This is line 3.
EOF
