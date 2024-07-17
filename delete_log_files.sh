#!/bin/bash

read -p "Enter directory name: " dir

if [[ -d $dir ]]; then
  
    cd "$dir"
    
    rm -f *.log
    echo "All .txt files have been deleted in the directory $dir."
else
    echo "No such directory."
fi
    
