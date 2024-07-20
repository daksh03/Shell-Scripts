read -p "Enter Directory Name: " dir
if [[ -d $dir ]]; then
	echo "Directory Exists"
else
	echo "Directory Don't exists"
	exit 1
fi
for file in "$dir"/*; do
	if [[ -f $file ]]; then
		ext="${file##*.}"
		mkdir -p "$dir/$ext"
		mv "$file" "$dir/$ext/"
	fi
done

