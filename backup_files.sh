
#!/bin/bash

read -p "Enter source directory: " s
read -p "Enter destination directory: " d

if [[ -d $s ]]; then
    if [[ -d $d ]]; then
        find "$s" -type f -exec cp {} "$d" \;
        echo "Files copied from $s to $d"
    else
        echo "No such destination directory: $d"
    fi
else
    echo "No such source directory: $s"
fi
